.class Landroid/widget/BubbleDrawable$Shape;
.super Ljava/lang/Object;
.source "BubbleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shape"
.end annotation


# instance fields
.field ArrowDelta:F

.field ArrowHeight:F

.field ArrowPeakX:F

.field ArrowPeakY:F

.field ArrowWidth:F

.field BorderWidth:F

.field BottomLeftRadius:F

.field BottomRightRadius:F

.field Rect:Landroid/graphics/RectF;

.field TopLeftRadius:F

.field TopRightRadius:F

.field final synthetic this$0:Landroid/widget/BubbleDrawable;


# direct methods
.method private constructor <init>(Landroid/widget/BubbleDrawable;)V
    .locals 2
    .param p1, "this$0"    # Landroid/widget/BubbleDrawable;

    .prologue
    const/4 v1, 0x0

    .line 42
    iput-object p1, p0, Landroid/widget/BubbleDrawable$Shape;->this$0:Landroid/widget/BubbleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    .line 44
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    .line 45
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    .line 46
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    .line 47
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    .line 48
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 49
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    .line 50
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    .line 51
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    .line 52
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    .line 53
    iput v1, p0, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BubbleDrawable;Landroid/widget/BubbleDrawable$Shape;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/BubbleDrawable;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/BubbleDrawable$Shape;-><init>(Landroid/widget/BubbleDrawable;)V

    return-void
.end method


# virtual methods
.method set(Landroid/widget/BubbleDrawable$Shape;)V
    .locals 2
    .param p1, "shape"    # Landroid/widget/BubbleDrawable$Shape;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    iget-object v1, p1, Landroid/widget/BubbleDrawable$Shape;->Rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 57
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->BorderWidth:F

    .line 58
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowHeight:F

    .line 59
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowWidth:F

    .line 60
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowDelta:F

    .line 61
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakX:F

    .line 62
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->ArrowPeakY:F

    .line 63
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->TopLeftRadius:F

    .line 64
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->TopRightRadius:F

    .line 65
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->BottomLeftRadius:F

    .line 66
    iget v0, p1, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    iput v0, p0, Landroid/widget/BubbleDrawable$Shape;->BottomRightRadius:F

    .line 55
    return-void
.end method
