.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method static synthetic -wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 465
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 466
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 463
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 513
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-gt v2, v3, :cond_0

    .line 514
    new-array v1, v5, [B

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 515
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v1

    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2

    .line 517
    .end local v1    # "bytes":[B
    :cond_0
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 518
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, v0

    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 567
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xc

    .line 558
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    .line 557
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 559
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 560
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 561
    .local v2, "value":D
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    .end local v2    # "value":D
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 508
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v5, 0x9

    .line 499
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 498
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 500
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 501
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 502
    .local v1, "value":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 553
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/16 v6, 0xa

    .line 543
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 542
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 544
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 545
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 546
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 547
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 545
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 523
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, v0

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 494
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x4

    .line 485
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v1

    aget v1, v1, v6

    array-length v4, p0

    mul-int/2addr v1, v4

    new-array v1, v1, [B

    .line 484
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 486
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, p0, v1

    .line 488
    .local v2, "value":J
    long-to-int v5, v2

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v2    # "value":J
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    array-length v4, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v1
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 538
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v6, 0x5

    .line 528
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v6

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 527
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 529
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 530
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 531
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 532
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 480
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object v0

    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x3

    .line 471
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v2

    aget v2, v2, v5

    array-length v3, p0

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    .line 470
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 472
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 473
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, p0, v2

    .line 474
    .local v1, "value":I
    int-to-short v4, v1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    array-length v3, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 22
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    .line 578
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    .line 579
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 580
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    packed-switch v3, :pswitch_data_0

    .line 681
    const/4 v3, 0x0

    return-object v3

    .line 584
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v3, v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    const/4 v8, 0x0

    aget-byte v3, v3, v8

    const/4 v8, 0x1

    if-gt v3, v8, :cond_0

    .line 585
    new-instance v3, Ljava/lang/String;

    const/4 v8, 0x1

    new-array v8, v8, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-byte v19, v19, v20

    add-int/lit8 v19, v19, 0x30

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-char v19, v8, v20

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 587
    :cond_0
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v3

    .line 591
    :pswitch_1
    const/4 v11, 0x0

    .line 592
    .local v11, "index":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    array-length v8, v8

    if-lt v3, v8, :cond_2

    .line 593
    const/4 v13, 0x1

    .line 594
    .local v13, "same":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v3, v3, v10

    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v8

    aget-byte v8, v8, v10

    if-eq v3, v8, :cond_4

    .line 596
    const/4 v13, 0x0

    .line 600
    :cond_1
    if-eqz v13, :cond_2

    .line 601
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    move-result-object v3

    array-length v11, v3

    .line 605
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 606
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v11, v3, :cond_3

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v2, v3, v11

    .line 608
    .local v2, "ch":I
    if-nez v2, :cond_5

    .line 618
    .end local v2    # "ch":I
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 594
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 611
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v3, 0x20

    if-lt v2, v3, :cond_6

    .line 612
    int-to-char v3, v2

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 614
    :cond_6
    const/16 v3, 0x3f

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 683
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 684
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ExifInterface"

    const-string/jumbo v8, "IOException occurred during reading a value"

    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    const/4 v3, 0x0

    return-object v3

    .line 621
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 622
    .local v16, "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_7

    .line 623
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    move-result v3

    aput v3, v16, v10

    .line 622
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 625
    :cond_7
    return-object v16

    .line 628
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 629
    .local v17, "values":[J
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_8

    .line 630
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v20

    aput-wide v20, v17, v10

    .line 629
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 632
    :cond_8
    return-object v17

    .line 635
    .end local v10    # "i":I
    .end local v17    # "values":[J
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    .line 636
    .local v18, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_9

    .line 637
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    .line 638
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 639
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    .line 636
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 641
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_9
    return-object v18

    .line 644
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 645
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_a

    .line 646
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    move-result v3

    aput v3, v16, v10

    .line 645
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 648
    :cond_a
    return-object v16

    .line 651
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    .line 652
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_b

    .line 653
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    aput v3, v16, v10

    .line 652
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 655
    :cond_b
    return-object v16

    .line 658
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    move-object/from16 v18, v0

    .line 659
    .restart local v18    # "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_c

    .line 660
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v4, v3

    .line 661
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    move-result v3

    int-to-long v6, v3

    .line 662
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    aput-object v3, v18, v10

    .line 659
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 664
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_c
    return-object v18

    .line 667
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 668
    .local v15, "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_d

    .line 669
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v20, v0

    aput-wide v20, v15, v10

    .line 668
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 671
    :cond_d
    return-object v15

    .line 674
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array v15, v3, [D

    .line 675
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v10, v3, :cond_e

    .line 676
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    move-result-wide v20

    aput-wide v20, v15, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 675
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 678
    :cond_e
    return-object v15

    .line 580
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 690
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v4

    .line 691
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 692
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "NULL can\'t be converted to a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 694
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 695
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    return-wide v6

    .line 697
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, [J

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 698
    check-cast v2, [J

    .line 699
    .local v2, "array":[J
    array-length v5, v2

    if-ne v5, v7, :cond_2

    .line 700
    aget-wide v6, v2, v6

    long-to-double v6, v6

    return-wide v6

    .line 702
    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 704
    .end local v2    # "array":[J
    :cond_3
    instance-of v5, v4, [I

    if-eqz v5, :cond_5

    move-object v1, v4

    .line 705
    check-cast v1, [I

    .line 706
    .local v1, "array":[I
    array-length v5, v1

    if-ne v5, v7, :cond_4

    .line 707
    aget v5, v1, v6

    int-to-double v6, v5

    return-wide v6

    .line 709
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 711
    .end local v1    # "array":[I
    :cond_5
    instance-of v5, v4, [D

    if-eqz v5, :cond_7

    move-object v0, v4

    .line 712
    check-cast v0, [D

    .line 713
    .local v0, "array":[D
    array-length v5, v0

    if-ne v5, v7, :cond_6

    .line 714
    aget-wide v6, v0, v6

    return-wide v6

    .line 716
    :cond_6
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 718
    .end local v0    # "array":[D
    :cond_7
    instance-of v5, v4, [Landroid/media/ExifInterface$Rational;

    if-eqz v5, :cond_9

    move-object v3, v4

    .line 719
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .line 720
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    array-length v5, v3

    if-ne v5, v7, :cond_8

    .line 721
    aget-object v5, v3, v6

    invoke-virtual {v5}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v6

    return-wide v6

    .line 723
    :cond_8
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "There are more than one component"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_9
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string/jumbo v6, "Couldn\'t find a double value"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 729
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    .line 730
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 731
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "NULL can\'t be converted to a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 733
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 734
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 736
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, [J

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 737
    check-cast v1, [J

    .line 738
    .local v1, "array":[J
    array-length v3, v1

    if-ne v3, v5, :cond_2

    .line 739
    aget-wide v4, v1, v4

    long-to-int v3, v4

    return v3

    .line 741
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 743
    .end local v1    # "array":[J
    :cond_3
    instance-of v3, v2, [I

    if-eqz v3, :cond_5

    move-object v0, v2

    .line 744
    check-cast v0, [I

    .line 745
    .local v0, "array":[I
    array-length v3, v0

    if-ne v3, v5, :cond_4

    .line 746
    aget v3, v0, v4

    return v3

    .line 748
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "There are more than one component"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    .end local v0    # "array":[I
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string/jumbo v4, "Couldn\'t find a integer value"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 10
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .prologue
    const/4 v8, 0x0

    .line 754
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    .line 755
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 756
    return-object v8

    .line 758
    :cond_0
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 759
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    return-object v6

    .line 762
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v7, v6, [J

    if-eqz v7, :cond_4

    move-object v2, v6

    .line 764
    check-cast v2, [J

    .line 765
    .local v2, "array":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_3

    .line 766
    aget-wide v8, v2, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 767
    add-int/lit8 v7, v4, 0x1

    array-length v8, v2

    if-eq v7, v8, :cond_2

    .line 768
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 771
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 773
    .end local v2    # "array":[J
    .end local v4    # "i":I
    :cond_4
    instance-of v7, v6, [I

    if-eqz v7, :cond_7

    move-object v1, v6

    .line 774
    check-cast v1, [I

    .line 775
    .local v1, "array":[I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_6

    .line 776
    aget v7, v1, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 777
    add-int/lit8 v7, v4, 0x1

    array-length v8, v1

    if-eq v7, v8, :cond_5

    .line 778
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 781
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 783
    .end local v1    # "array":[I
    .end local v4    # "i":I
    :cond_7
    instance-of v7, v6, [D

    if-eqz v7, :cond_a

    move-object v0, v6

    .line 784
    check-cast v0, [D

    .line 785
    .local v0, "array":[D
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    array-length v7, v0

    if-ge v4, v7, :cond_9

    .line 786
    aget-wide v8, v0, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 787
    add-int/lit8 v7, v4, 0x1

    array-length v8, v0

    if-eq v7, v8, :cond_8

    .line 788
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 791
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 793
    .end local v0    # "array":[D
    .end local v4    # "i":I
    :cond_a
    instance-of v7, v6, [Landroid/media/ExifInterface$Rational;

    if-eqz v7, :cond_d

    move-object v3, v6

    .line 794
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    .line 795
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v7, v3

    if-ge v4, v7, :cond_c

    .line 796
    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 797
    const/16 v7, 0x2f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 798
    aget-object v7, v3, v4

    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 799
    add-int/lit8 v7, v4, 0x1

    array-length v8, v3

    if-eq v7, v8, :cond_b

    .line 800
    const-string/jumbo v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 803
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 805
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v4    # "i":I
    :cond_d
    return-object v8
.end method

.method public size()I
    .locals 2

    .prologue
    .line 809
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-get3()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
