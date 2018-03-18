.class final Lcom/android/server/TouchFrameService$TrackPoint;
.super Ljava/lang/Object;
.source "TouchFrameService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackPoint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/TouchFrameService$TrackPoint;",
        ">;"
    }
.end annotation


# instance fields
.field id:I

.field mMotionDownX:I

.field mMotionDownY:I

.field mPressed:Z

.field x:I

.field y:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/TouchFrameService$TrackPoint;ZII)V
    .locals 0
    .param p1, "pressed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/TouchFrameService$TrackPoint;->setPressed(ZII)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    .line 1319
    iput v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    .line 1320
    iput v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    .line 1321
    iput-boolean v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    .line 1314
    return-void
.end method

.method private setPressed(ZII)V
    .locals 0
    .param p1, "pressed"    # Z
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lcom/android/server/TouchFrameService$TrackPoint;->setPressed(Z)V

    .line 1344
    iput p2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    .line 1345
    iput p3, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    .line 1341
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/TouchFrameService$TrackPoint;)I
    .locals 2
    .param p1, "o"    # Lcom/android/server/TouchFrameService$TrackPoint;

    .prologue
    .line 1366
    iget v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    iget v1, p1, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1364
    check-cast p1, Lcom/android/server/TouchFrameService$TrackPoint;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/TouchFrameService$TrackPoint;->compareTo(Lcom/android/server/TouchFrameService$TrackPoint;)I

    move-result v0

    return v0
.end method

.method public copyTo(Lcom/android/server/TouchFrameService$TrackPoint;)V
    .locals 3
    .param p1, "o"    # Lcom/android/server/TouchFrameService$TrackPoint;

    .prologue
    .line 1360
    iget v0, p0, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    iget v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/TouchFrameService$TrackPoint;->set(III)V

    .line 1358
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1372
    instance-of v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;

    if-nez v2, :cond_0

    .line 1373
    return v1

    :cond_0
    move-object v0, p1

    .line 1374
    check-cast v0, Lcom/android/server/TouchFrameService$TrackPoint;

    .line 1375
    .local v0, "o":Lcom/android/server/TouchFrameService$TrackPoint;
    iget-boolean v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    iget-boolean v3, v0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    iget v3, v0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    iget v3, v0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public nearBy(Lcom/android/server/TouchFrameService$TrackPoint;)Z
    .locals 4
    .param p1, "o"    # Lcom/android/server/TouchFrameService$TrackPoint;

    .prologue
    const/16 v3, 0xf

    const/4 v0, 0x0

    .line 1350
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    iget v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    iget v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public sameAs(Lcom/android/server/TouchFrameService$TrackPoint;)Z
    .locals 3
    .param p1, "o"    # Lcom/android/server/TouchFrameService$TrackPoint;

    .prologue
    const/4 v0, 0x0

    .line 1355
    iget-boolean v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    iget v2, p1, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public set(II)V
    .locals 0
    .param p1, "tx"    # I
    .param p2, "ty"    # I

    .prologue
    .line 1332
    iput p1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    .line 1333
    iput p2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    .line 1330
    return-void
.end method

.method public set(III)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "tx"    # I
    .param p3, "ty"    # I

    .prologue
    .line 1325
    iput p1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    .line 1326
    iput p2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    .line 1327
    iput p3, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    .line 1323
    return-void
.end method

.method setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1338
    iput-boolean p1, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    .line 1336
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1381
    const-string/jumbo v0, "TrackPoint(id=%d, down=(%d,%d), move=(%d,%d), p=%s) "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 1382
    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mMotionDownY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/server/TouchFrameService$TrackPoint;->mPressed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 1381
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
