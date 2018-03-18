.class public Landroid/widget/RelativePos;
.super Ljava/lang/Object;
.source "RelativePos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativePos$RelativeH;,
        Landroid/widget/RelativePos$RelativeV;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x1

.field public static final ALIGN_BOTTOM:I = 0x4

.field public static final ALIGN_LEFT:I = 0x3

.field public static final ALIGN_RIGHT:I = 0x4

.field public static final ALIGN_TOP:I = 0x3

.field public static final BELOW:I = 0x2

.field public static final CENTER_HORIZONTAL:I = 0x0

.field public static final CENTER_VERTICAL:I = 0x0

.field public static final TO_LEFT_OF:I = 0x1

.field public static final TO_RIGHT_OF:I = 0x2


# instance fields
.field private mHorizontalRelate:I

.field private mVerticalRelate:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "mHorizontalRelate"    # I
    .param p2, "mVerticalRelate"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    .line 41
    iput v0, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    .line 44
    iput p1, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    .line 45
    iput p2, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    .line 43
    return-void
.end method

.method private isHorizontalToTargetOf()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 65
    iget v1, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerticalToTargetOf()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getArrowDirection()Landroid/widget/BubbleStyle$ArrowDirection;
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 73
    invoke-direct {p0}, Landroid/widget/RelativePos;->isHorizontalToTargetOf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/RelativePos;->isVerticalToTargetOf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    invoke-direct {p0}, Landroid/widget/RelativePos;->isHorizontalToTargetOf()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Landroid/widget/RelativePos;->isVerticalToTargetOf()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    iget v0, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    if-ne v0, v2, :cond_3

    .line 83
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Up:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0

    .line 74
    :cond_1
    iget v0, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    if-ne v0, v2, :cond_2

    .line 75
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Left:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0

    .line 76
    :cond_2
    iget v0, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    if-ne v0, v1, :cond_0

    .line 77
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Right:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0

    .line 84
    :cond_3
    iget v0, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    if-ne v0, v1, :cond_4

    .line 85
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->Down:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0

    .line 89
    :cond_4
    sget-object v0, Landroid/widget/BubbleStyle$ArrowDirection;->None:Landroid/widget/BubbleStyle$ArrowDirection;

    return-object v0
.end method

.method public getHorizontalRelate()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    return v0
.end method

.method public getVerticalRelate()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    return v0
.end method

.method public setHorizontalRelate(I)V
    .locals 0
    .param p1, "horizontalRelate"    # I

    .prologue
    .line 53
    iput p1, p0, Landroid/widget/RelativePos;->mHorizontalRelate:I

    .line 52
    return-void
.end method

.method public setVerticalRelate(I)V
    .locals 0
    .param p1, "verticalRelate"    # I

    .prologue
    .line 61
    iput p1, p0, Landroid/widget/RelativePos;->mVerticalRelate:I

    .line 60
    return-void
.end method
