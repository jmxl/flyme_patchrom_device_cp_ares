.class public final Landroid/util/JunkLog;
.super Ljava/lang/Object;
.source "JunkLog.java"


# static fields
.field private static final JUNK_EVENT_SEPARATOR:Ljava/lang/String; = ": "

.field private static ivSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static keySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 66
    :try_start_0
    invoke-static {}, Landroid/util/Log;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 68
    .local v4, "keyBytes":[B
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 70
    .local v0, "buf":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    array-length v5, v0

    if-ge v2, v5, :cond_0

    .line 71
    aget-byte v5, v4, v2

    aput-byte v5, v0, v2

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sput-object v5, Landroid/util/JunkLog;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 75
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v5, Landroid/util/JunkLog;->ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .end local v0    # "buf":[B
    .end local v2    # "i":I
    .end local v4    # "keyBytes":[B
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v2, p0, v0}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static ux(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "encrypt"    # Z

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 36
    .local v1, "data":[B
    if-eqz p3, :cond_0

    .line 38
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    .local v0, "cipher":Ljavax/crypto/Cipher;
    sget-object v4, Landroid/util/JunkLog;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, Landroid/util/JunkLog;->ivSpec:Ljavax/crypto/spec/IvParameterSpec;

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "data":[B
    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "msg_64":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "encrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x7

    invoke-static {v5, v6, p0, v4}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    return v4

    .line 41
    .end local v3    # "msg_64":Ljava/lang/String;
    .restart local v1    # "data":[B
    :catch_0
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, p2

    .restart local v3    # "msg_64":Ljava/lang/String;
    goto :goto_1
.end method
