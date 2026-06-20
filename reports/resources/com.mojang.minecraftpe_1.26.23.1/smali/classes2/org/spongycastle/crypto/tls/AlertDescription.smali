.class public Lorg/spongycastle/crypto/tls/AlertDescription;
.super Ljava/lang/Object;
.source "AlertDescription.java"


# static fields
.field public static final access_denied:S = 0x31S

.field public static final bad_certificate:S = 0x2aS

.field public static final bad_certificate_hash_value:S = 0x72S

.field public static final bad_certificate_status_response:S = 0x71S

.field public static final bad_record_mac:S = 0x14S

.field public static final certificate_expired:S = 0x2dS

.field public static final certificate_revoked:S = 0x2cS

.field public static final certificate_unknown:S = 0x2eS

.field public static final certificate_unobtainable:S = 0x6fS

.field public static final close_notify:S = 0x0S

.field public static final decode_error:S = 0x32S

.field public static final decompression_failure:S = 0x1eS

.field public static final decrypt_error:S = 0x33S

.field public static final decryption_failed:S = 0x15S

.field public static final export_restriction:S = 0x3cS

.field public static final handshake_failure:S = 0x28S

.field public static final illegal_parameter:S = 0x2fS

.field public static final inappropriate_fallback:S = 0x56S

.field public static final insufficient_security:S = 0x47S

.field public static final internal_error:S = 0x50S

.field public static final no_certificate:S = 0x29S

.field public static final no_renegotiation:S = 0x64S

.field public static final protocol_version:S = 0x46S

.field public static final record_overflow:S = 0x16S

.field public static final unexpected_message:S = 0xaS

.field public static final unknown_ca:S = 0x30S

.field public static final unknown_psk_identity:S = 0x73S

.field public static final unrecognized_name:S = 0x70S

.field public static final unsupported_certificate:S = 0x2bS

.field public static final unsupported_extension:S = 0x6eS

.field public static final user_canceled:S = 0x5aS


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_9

    const/16 v0, 0xa

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_7

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_6

    const/16 v0, 0x50

    if-eq p0, v0, :cond_5

    const/16 v0, 0x56

    if-eq p0, v0, :cond_4

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_2

    const/16 v0, 0x46

    if-eq p0, v0, :cond_1

    const/16 v0, 0x47

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 295
    const-string p0, "UNKNOWN"

    return-object p0

    .line 291
    :pswitch_0    # 0x73
    const-string/jumbo p0, "unknown_psk_identity"

    return-object p0

    .line 289
    :pswitch_1    # 0x72
    const-string p0, "bad_certificate_hash_value"

    return-object p0

    .line 287
    :pswitch_2    # 0x71
    const-string p0, "bad_certificate_status_response"

    return-object p0

    .line 285
    :pswitch_3    # 0x70
    const-string/jumbo p0, "unrecognized_name"

    return-object p0

    .line 283
    :pswitch_4    # 0x6f
    const-string p0, "certificate_unobtainable"

    return-object p0

    .line 281
    :pswitch_5    # 0x6e
    const-string/jumbo p0, "unsupported_extension"

    return-object p0

    .line 267
    :pswitch_6    # 0x33
    const-string p0, "decrypt_error"

    return-object p0

    .line 265
    :pswitch_7    # 0x32
    const-string p0, "decode_error"

    return-object p0

    .line 263
    :pswitch_8    # 0x31
    const-string p0, "access_denied"

    return-object p0

    .line 261
    :pswitch_9    # 0x30
    const-string/jumbo p0, "unknown_ca"

    return-object p0

    .line 259
    :pswitch_a    # 0x2f
    const-string p0, "illegal_parameter"

    return-object p0

    .line 257
    :pswitch_b    # 0x2e
    const-string p0, "certificate_unknown"

    return-object p0

    .line 255
    :pswitch_c    # 0x2d
    const-string p0, "certificate_expired"

    return-object p0

    .line 253
    :pswitch_d    # 0x2c
    const-string p0, "certificate_revoked"

    return-object p0

    .line 251
    :pswitch_e    # 0x2b
    const-string/jumbo p0, "unsupported_certificate"

    return-object p0

    .line 249
    :pswitch_f    # 0x2a
    const-string p0, "bad_certificate"

    return-object p0

    .line 247
    :pswitch_10    # 0x29
    const-string p0, "no_certificate"

    return-object p0

    .line 245
    :pswitch_11    # 0x28
    const-string p0, "handshake_failure"

    return-object p0

    .line 241
    :pswitch_12    # 0x16
    const-string p0, "record_overflow"

    return-object p0

    .line 239
    :pswitch_13    # 0x15
    const-string p0, "decryption_failed"

    return-object p0

    .line 237
    :pswitch_14    # 0x14
    const-string p0, "bad_record_mac"

    return-object p0

    .line 273
    :cond_0
    const-string p0, "insufficient_security"

    return-object p0

    .line 271
    :cond_1
    const-string p0, "protocol_version"

    return-object p0

    .line 279
    :cond_2
    const-string p0, "no_renegotiation"

    return-object p0

    .line 277
    :cond_3
    const-string/jumbo p0, "user_canceled"

    return-object p0

    .line 293
    :cond_4
    const-string p0, "inappropriate_fallback"

    return-object p0

    .line 275
    :cond_5
    const-string p0, "internal_error"

    return-object p0

    .line 269
    :cond_6
    const-string p0, "export_restriction"

    return-object p0

    .line 243
    :cond_7
    const-string p0, "decompression_failure"

    return-object p0

    .line 235
    :cond_8
    const-string/jumbo p0, "unexpected_message"

    return-object p0

    .line 233
    :cond_9
    const-string p0, "close_notify"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_14    # 0x14
        :pswitch_13    # 0x15
        :pswitch_12    # 0x16
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_11    # 0x28
        :pswitch_10    # 0x29
        :pswitch_f    # 0x2a
        :pswitch_e    # 0x2b
        :pswitch_d    # 0x2c
        :pswitch_c    # 0x2d
        :pswitch_b    # 0x2e
        :pswitch_a    # 0x2f
        :pswitch_9    # 0x30
        :pswitch_8    # 0x31
        :pswitch_7    # 0x32
        :pswitch_6    # 0x33
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_5    # 0x6e
        :pswitch_4    # 0x6f
        :pswitch_3    # 0x70
        :pswitch_2    # 0x71
        :pswitch_1    # 0x72
        :pswitch_0    # 0x73
    .end packed-switch
.end method

.method public static getText(S)Ljava/lang/String;
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/AlertDescription;->getName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
