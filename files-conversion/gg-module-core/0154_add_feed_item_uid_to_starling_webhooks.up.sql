ALTER TABLE starling_webhooks
    ADD COLUMN feed_item_uid VARCHAR(255) UNIQUE;
