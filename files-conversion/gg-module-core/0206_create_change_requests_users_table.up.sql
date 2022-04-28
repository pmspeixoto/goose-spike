CREATE TABLE change_requests_users
(
    change_requests_id   INT     NOT NULL,
    user_id              INT     NOT NULL,
    created_at           BIGINT  NOT NULL,
    updated_at           BIGINT  NOT NULL,
    director             BOOLEAN,
    onboarded_at         BIGINT,
    onboard_exempt       BOOLEAN NOT NULL DEFAULT FALSE,
    accepted_at          BIGINT,
    accept_exempt        BOOLEAN NOT NULL DEFAULT FALSE,
    questionnaire_at     BIGINT,
    questionnaire_exempt BOOLEAN NOT NULL DEFAULT FALSE,
    signed_at            BIGINT,
    sign_exempt          BOOLEAN NOT NULL DEFAULT FALSE,

    CONSTRAINT PK_Change_Request_Users PRIMARY KEY (change_requests_id, user_id),
    FOREIGN KEY (change_requests_id) REFERENCES change_requests (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);