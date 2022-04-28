import argparse
import datetime
import os
import shutil
import sys
import time

def migrate_to_goose(directory):

  new_migration = True
  first_iteration = True
  out_dir = os.path.join(directory, "output")
  datafix_dir = os.path.join(out_dir, "datafix")
  template_file_dir = os.path.join(directory, "template")
  template_file_path = os.path.join(template_file_dir, "create_goose_db_version_table_template.sql")
  current_filename = ""

  if not os.path.isdir(out_dir):
    os.system("mkdir %s" % out_dir)
  else:
    shutil.rmtree(out_dir)
    os.system("mkdir %s" % out_dir)
  
  # create dir for datafix file and create empty file
  if not os.path.isdir(datafix_dir):
    os.system("mkdir %s" % datafix_dir)
  else:
    shutil.rmtree(datafix_dir)
    os.system("mkdir %s" % datafix_dir)
  
  datafix_file_name = "migrate_to_goose_datafix.sql"
  datafix_file_path = os.path.join(datafix_dir, datafix_file_name)

  shutil.copyfile(template_file_path, datafix_file_path)

  up_migration_contents = ""
  down_migration_contents = ""

  for filename in sorted(os.listdir(directory)):
    f = os.path.join(directory, filename)

    if os.path.isfile(f):
      file_full_path = (os.path.join(os.path.dirname(os.path.abspath(__file__)), f))
      sliced_filename = filename[5:-4].replace(".down", "").replace(".up", "")

    # check if it is the same file we are processing
    if (sliced_filename != current_filename) and (not first_iteration):
      file_timestamp = datetime.datetime.now().strftime("%Y%m%d%H%M%S")
      new_file_name_with_ext = file_timestamp + "_" + current_filename + ".sql"
      new_file_dir = os.path.join(out_dir, new_file_name_with_ext)

      with open(new_file_dir, 'w') as new_file:
        print("creating new migration file %s" % new_file_dir)
        # up migration
        new_file.write("-- +goose Up\n")
        new_file.write("-- +goose StatementBegin\n")
        new_file.write(up_migration_contents)
        new_file.write("\n-- +goose StatementEnd\n")
        new_file.write("\n")

        # down migration
        new_file.write("-- +goose Down\n")
        new_file.write("-- +goose StatementBegin\n")
        new_file.write(down_migration_contents)
        new_file.write("\n-- +goose StatementEnd\n")

        time.sleep(5)
      
      with open(datafix_file_path, 'a') as datafix_file:
        datafix_file.write("INSERT INTO goose_db_version (version_id, is_applied, tstamp) VALUES (%s, 1, NOW());\n" % file_timestamp)

      new_migration = True

    if ('.sql' in filename) and ('.down.' in filename):
      with open (file_full_path, "r") as down_mig_file:
        file_contents = down_mig_file.readlines()
        raw_file_contents = " ".join(map(str, file_contents))
        down_migration_contents = raw_file_contents

    elif ('.sql' in filename) and ('.up.' in filename):
      with open (file_full_path, "r") as up_mig_file:
        file_contents = up_mig_file.readlines()
        raw_file_contents = " ".join(map(str, file_contents))
        up_migration_contents = raw_file_contents

    else:
      # check if there is any migration file pending to be written
      
      print ("not a sql file - skipping migration of %s" % f)

    if first_iteration:
      first_iteration = False

    current_filename = sliced_filename

if __name__== "__main__":

  # read input args
  parser = argparse.ArgumentParser()
  parser.add_argument("-p", "--path", help = "folder path where the migrations are stored")
  args = parser.parse_args()

  if args.path:
    print("INFO: converting files under %s to goose format" % args.path)
    migrate_to_goose(args.path)
  else:
    print("ERROR: no input path supplied. aborting run")
    sys.exit()