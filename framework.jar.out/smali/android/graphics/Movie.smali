.class public Landroid/graphics/Movie;
.super Ljava/lang/Object;
.source "Movie.java"


# instance fields
.field private mNativeMovie:J


# direct methods
.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeMovie"    # J

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native movie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Movie;->mNativeMovie:J

    .line 28
    return-void
.end method

.method public static native decodeByteArray([BII)Landroid/graphics/Movie;
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 92
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v2, 0x0

    .line 54
    if-nez p0, :cond_0

    .line 55
    return-object v2

    .line 57
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 58
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 59
    .local v0, "asset":J
    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDecodeAsset(J)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2

    .line 62
    .end local v0    # "asset":J
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {p0}, Landroid/graphics/Movie;->nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v2

    return-object v2
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, "moov":Landroid/graphics/Movie;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v1

    .line 112
    .local v1, "moov":Landroid/graphics/Movie;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "moov":Landroid/graphics/Movie;
    :goto_0
    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private native nDraw(JFFJ)V
.end method

.method private static native nativeDecodeAsset(J)Landroid/graphics/Movie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
.end method

.method private static native nativeDestructor(J)V
.end method

.method private native nativeRotate()I
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    move-object v1, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 49
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v2

    .line 46
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-object v1, p0

    move v4, p2

    move v5, p3

    .line 45
    invoke-direct/range {v1 .. v7}, Landroid/graphics/Movie;->nDraw(JFFJ)V

    .line 44
    return-void

    .line 46
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 101
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J

    invoke-static {v0, v1}, Landroid/graphics/Movie;->nativeDestructor(J)V

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Movie;->mNativeMovie:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 99
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 103
    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public rotate()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
