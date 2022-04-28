-- +goose Up
-- +goose StatementBegin
INSERT INTO employees (created_at, updated_at, deleted_at, first_name, last_name, email, signature_location, hash, country) VALUES
  (null, 1628874689850330868, null, 'Misrab', 'Faizullah Khan', 'misrab@getground.co.uk', 'employees/1/20210326181019/signature.png', 'cf23cc27-7438-4267-96e3-51ca894e265f', null),
  (null, 1628874690086239269, null, 'Moubin', 'Faizullah Khan', 'moubin@getground.co.uk', 'employees/2/20210326181019/signature.png', '48e7d6e3-9e06-44d1-af31-29e31f6d71af', null),
  (1580318188094195531, 1628874690294450625, null, 'Khalil', 'Fergiani', 'khalil.f@getground.co.uk', 'employees/3/20210326181019/signature.png', '415c02fe-b52c-4d23-96dd-8666c97a0941', null),
  (1580835465463378989, 1628874690511073204, null, 'Ravin', 'Patel', 'ravin.patel@getground.co.uk', 'employees/4/20210326181019/signature.png', 'dab2bbfc-8cb5-46ee-bd39-b70c072d4b5f', null),
  (1580835465463378989, 1628874690739319624, null, 'David', 'Tucker', 'david.tucker@getground.co.uk', 'employees/5/20210326181019/signature.png', 'a21aad27-9fd4-43c1-a646-8caf80d391e3', null),
  (1580835465463378989, 1628874690962395090, null, 'Guo Jun', 'Leow', 'gj.leow@getground.co.uk', 'employees/6/20210326181019/signature.png', 'abed07b4-061f-423e-b2ea-31c1e3f0015d', null),
  (1580835465463378989, 1628874691192628315, null, 'Liam', 'Rogan', 'liam.rogan@getground.co.uk', 'employees/7/20210326181020/signature.png', 'aec31096-8f08-44c6-b6bf-93b55bf5d47d', null),
  (1580835465463378989, 1628874691401583661, null, 'George', 'Orsler', 'george.orsler@getground.co.uk', 'employees/8/20210326181020/signature.png', '68e7b5c1-2216-4874-9152-b91701378523', null),
  (1580835465463378989, 1628874691612491119, null, 'Rhys', 'Merritt', 'rhys.merritt@getground.co.uk', 'employees/9/20210326181020/signature.png', 'ad006775-b319-4bfa-9b0b-128904218b64', null),
  (1580835465463378989, 1633103564889115476, null, 'Anca', 'Brindusan', 'ancuta.brindusan@getground.co.uk', 'employees/10/20210326181020/signature.png', '8cf754f7-90c1-4f4e-8755-86f405af6f2c', null),
  (1580835465463378989, 1628874692063909267, null, 'Jess', 'Holt', 'jess.h@getground.co.uk', 'employees/11/20210326181020/signature.png', '4162cbc7-2f6e-43ca-8bd7-d8ba46bd30cf', null),
  (1580835465463378989, 1628874692482219953, null, 'Chris', 'Frame', 'chris.frame@getground.co.uk', 'employees/13/20210326181020/signature.png', '1e59886b-afcf-4982-8f4d-9fdb40c65b0f', null),
  (1594292724842436448, 1628874692689183113, null, 'Pierre', 'Feray-Ferrand', 'pierre.ferayferrand@getground.co.uk', 'employees/14/20210326181020/signature.png', 'fc808f22-68fc-4b15-9158-95f270daf85e', null),
  (1596712287557122954, 1628874692871813251, null, 'Adrian', 'Apan', 'adrian.apan@getground.co.uk', 'employees/15/20210326181020/signature.png', 'a81fafc6-505c-447a-82cb-d6256b3858f0', null),
  (1597398306647146418, 1628874693105610244, null, 'Jessie', 'Humphrey', 'jess.humphrey@getground.co.uk', 'employees/16/20210326181021/signature.png', '2b967ffb-cd9b-4d5e-a451-8355b0afb740', null),
  (1597410476072114464, 1628874693320687692, null, 'Bansi', 'Shah', 'bansi.shah@getground.co.uk', 'employees/17/20210326181021/signature.png', '1c3d7459-5d7a-4323-90be-c578b942fe99', null),
  (1599747289251123535, 1628874693533973438, null, 'Shared', 'QA', 'qa@getground.co.uk', 'employees/23/20210326181021/signature.png', '2a875d1c-7104-467f-9931-f0a5a74bdfd2', null),
  (1600705989024541440, 1628874693875909602, null, 'Natalie', 'Hamson', 'natalie.hamson@getground.co.uk', 'employees/24/20210326181021/signature.png', 'ba465ecb-935f-4f6d-af2e-c724e497b428', null),
  (1600706512810067182, 1628874694088955550, null, 'test', 'test', 'test@yopmail.com', 'employees/25/20210326181021/signature.png', '436aae22-66a5-4da7-86f2-eb8b779bcecb', null),
  (1603112186927003694, 1628874694480220671, null, 'Rhys', 'Merritt', 'rhys.merrritt@getground.co.uk', 'employees/29/20210326181021/signature.png', '9a7aa8d5-a0f9-4cd8-96ef-72ef6f4af81a', null),
  (1594292724842436448, 1628874694691707989, null, 'Zhiling', 'Chen', 'zl.chen@getground.co.uk', 'employees/30/20210326181021/signature.png', '096522e0-1d8c-48f9-b18a-584c14197315', null),
  (1608214239492506000, 1628874695108302484, null, 'Angelo', 'Brouns', 'angelo.brouns@getground.co.uk', 'employees/33/20210326181022/signature.png', '86b489a2-eb42-4ac7-bdec-73f4b274f385', null),
  (1609239229991047501, 1628874695521059648, null, 'Diogo', 'Mateus', 'diogo.mateus@getground.co.uk', 'employees/35/20210326181022/signature.png', '23ba78ce-af5c-437c-aead-f89b9627349d', null),
  (1611597948691924025, 1628874695909887838, null, 'PenTest', 'Nettitude', 'nettitude@getground.co.uk', 'employees/37/20210326181022/signature.png', '985bbeb0-d34f-42a9-94b9-ce3a221d00fa', null),
  (1611676208328643419, 1628874696114674476, null, 'PenTest', 'Test', 'test@getground.co.uk', 'employees/38/20210326181022/signature.png', 'bfd346a4-e09a-48d0-a84b-4d53a116e245', null),
  (1620990675401007000, 1628874696769580742, null, 'Hicham', 'Ameur', 'hicham.ameur@getground.co.uk', 'employees/41/20210514111719/signature.png', 'be7f7dbb-f515-41ee-9466-861fa28f4414', null),
  (1623093621118056000, 1628874698477626237, null, 'Vadym', 'Myronov', 'vadym.myronov@getground.co.uk', null, '', null),
  (1623093621118056000, 1628874700002540558, null, 'Nicola', 'Turco', 'nicola.turco@getground.co.uk', null, '', null),
  (1625058999198605348, 1633102635355941524, null, 'Subhechchha', 'Joshi', 'subhechchha.joshi@getground.co.uk', 'employees/0/20210630131639/signature.png', '37a6ab5b-ccc5-4f5b-b127-bcfe59111b05', null),
  (1625483518512637185, 1628874700422885055, null, 'Felipe', 'Espinoza', 'felipe.espinoza@getground.co.uk', 'employees/0/20210705111158/signature.png', 'be66cf33-41f7-47a6-8d03-d9996bc3201e', null),
  (1627296544855132607, 1628874700633515414, null, 'Mike', 'Slovich', 'mike.slovich@getground.co.uk', 'employees/0/20210726104904/signature.png', 'd856b986-824b-4ef9-a089-566bba0e926b', null),
  (1629369791436845251, 1629369791436845251, null, 'Val', 'Candella', 'valerian.candella@getground.co.uk', 'employees/0/20210819104311/signature.png', '66df1c5a-74cc-42a7-8e14-d75432bc86c3', null),
  (1631094685283960312, 1631179073672089575, null, 'Vinay', 'Krishnan', 'vinay.krishnan@getground.co.uk', 'employees/0/20210908095124/signature.png', 'f8585e46-5f64-474d-a42d-caef716ff284', null),
  (1634215874460058393, 1634215874460058393, null, 'Nick', 'Black', 'nick.black@getground.co.uk', 'employees/0/20211014125113/signature.png', '7f00a154-6ce0-4a66-9068-ff2643ecbc29', null),
  (1635326273331024685, 1635326273331024685, null, 'Alan', 'Ribeiro', 'alan.ribeiro@getground.co.uk', 'employees/0/20211027091752/signature.png', 'abe71a59-ea59-4ab2-a164-b4b060be82bf', null),
  (1637238708747792061, 1637238708747792061, null, 'Harry', 'Bennet', 'harry.bennett@getground.co.uk', 'employees/0/20211118123148/signature.png', 'bb98ad20-ed62-4988-90f5-e664424c1296', null),
  (1638271201083407702, 1638271201083407702, null, 'Molly', 'Levy', 'molly.levy@getground.co.uk', 'employees/0/20211130112000/signature.png', '99412890-8c5b-4a68-969d-48212636e9b7', null),
  (1638799631178287173, 1638799631178287173, null, 'Tinvia', 'Su', 'tinvia.su@getground.co.uk', 'employees/0/20211206140710/signature.png', '2a0db31e-bcc1-40cc-bc61-f35de52e7940', null),
  (1639740257961236064, 1639740257961236064, null, 'gabriel', 'marques', 'gabriel.marques@getground.co.uk', 'employees/0/20211217112417/signature.png', 'acee6741-3803-411e-9d4a-636ec307ee30', null),
  (1639996083199678235, 1639996083199678235, null, 'Carolina', 'Loureiro', 'carolina.loureiro@getground.co.uk', 'employees/0/20211220102802/signature.png', 'd26af066-974e-4aea-b8e8-7c2c0fcfdee0', null),
  (1640080133413521636, 1640080133413521636, null, 'Pat', 'Gouveia', 'patricia.gouveia@getground.co.uk', 'employees/0/20211221094853/signature.png', '32987bc7-bc27-456a-bd94-c4687da2e5c4', null),
  (1641979167821772751, 1641979167821772751, null, 'Laura', 'Azzani', 'laura.azzani@getground.co.uk', 'employees/0/20220112091927/signature.png', 'd497d1d8-a65d-4932-849c-9160eaf8196c', null),
  (1641992064011643770, 1641992064011643770, null, 'Ola', 'Lepek', 'ola.lepek@getground.co.uk', 'employees/0/20220112125423/signature.png', '5c6beb62-b5e0-40d2-b10d-45ed1934e5ed', null),
  (1642088152235669828, 1642088152235669828, null, 'Catarina', 'Cardoso', 'catarina.cardoso@getground.co.uk', 'employees/0/20220113153551/signature.png', '83f4a2ec-d383-4286-afc4-54f2d5ae125b', null);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin

-- +goose StatementEnd
