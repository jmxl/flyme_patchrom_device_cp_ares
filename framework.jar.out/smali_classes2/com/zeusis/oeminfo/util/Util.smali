.class public Lcom/zeusis/oeminfo/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2Int([B)I
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v2, 0x0

    return v2

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, "intValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 68
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    return v1
.end method

.method public static byteToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    .prologue
    const/4 v3, 0x0

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string/jumbo v2, ""

    return-object v2

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    .local v0, "index":I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 42
    .local v1, "strPassword":Ljava/lang/String;
    return-object v1
.end method

.method private bytesToHexString([BZ)Ljava/lang/String;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "toUpperCase"    # Z

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p1, :cond_0

    return-object v3

    .line 81
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 83
    .local v2, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 86
    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    .line 88
    .local v0, "b":I
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    aget-byte v3, p1, v1

    and-int/lit8 v0, v3, 0xf

    .line 92
    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "b":I
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private hexCharToInt(C)I
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 128
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x30

    return v0

    .line 129
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 130
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hexStringToBytes(Ljava/lang/String;Z)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "toUpperCase"    # Z

    .prologue
    const/4 v4, 0x0

    .line 111
    if-nez p1, :cond_0

    return-object v4

    .line 113
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "ss":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 117
    .local v3, "sz":I
    div-int/lit8 v4, v3, 0x2

    new-array v1, v4, [B

    .line 119
    .local v1, "ret":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 120
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lcom/zeusis/oeminfo/util/Util;->hexCharToInt(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    .line 121
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/zeusis/oeminfo/util/Util;->hexCharToInt(C)I

    move-result v6

    .line 120
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 119
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "ret":[B
    .end local v2    # "ss":Ljava/lang/String;
    .end local v3    # "sz":I
    :cond_1
    move-object v2, p1

    .line 113
    goto :goto_0

    .line 124
    .restart local v0    # "i":I
    .restart local v1    # "ret":[B
    .restart local v2    # "ss":Ljava/lang/String;
    .restart local v3    # "sz":I
    :cond_2
    return-object v1
.end method

.method public static int2Byte(I)[B
    .locals 4
    .param p0, "intValue"    # I

    .prologue
    const/4 v3, 0x4

    .line 51
    new-array v0, v3, [B

    .line 52
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 53
    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string/jumbo v0, ""

    return-object v0

    .line 26
    :cond_0
    return-object p0
.end method
