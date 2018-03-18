.class public Landroid/media/MMPlugInParam$Area;
.super Ljava/lang/Object;
.source "MMPlugInParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MMPlugInParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "weight"    # I

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p1, p0, Landroid/media/MMPlugInParam$Area;->rect:Landroid/graphics/Rect;

    .line 418
    iput p2, p0, Landroid/media/MMPlugInParam$Area;->weight:I

    .line 416
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 429
    instance-of v2, p1, Landroid/media/MMPlugInParam$Area;

    if-nez v2, :cond_0

    .line 430
    return v1

    :cond_0
    move-object v0, p1

    .line 432
    nop

    nop

    .line 433
    .local v0, "a":Landroid/media/MMPlugInParam$Area;
    iget-object v2, p0, Landroid/media/MMPlugInParam$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    .line 434
    iget-object v2, v0, Landroid/media/MMPlugInParam$Area;->rect:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    return v1

    .line 436
    :cond_1
    iget-object v2, p0, Landroid/media/MMPlugInParam$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/media/MMPlugInParam$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 438
    :cond_2
    iget v2, p0, Landroid/media/MMPlugInParam$Area;->weight:I

    iget v3, v0, Landroid/media/MMPlugInParam$Area;->weight:I

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method
