.class Landroid/support/v4/widget/SwipeRefreshLayout$7;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1074
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1100(Landroid/support/v4/widget/SwipeRefreshLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    float-to-int v0, v0

    .line 1079
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v2, v2, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 1080
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$400(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/CircleImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1081
    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1, v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$900(Landroid/support/v4/widget/SwipeRefreshLayout;IZ)V

    .line 1082
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$100(Landroid/support/v4/widget/SwipeRefreshLayout;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V

    .line 1083
    return-void

    .line 1075
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->access$1200(Landroid/support/v4/widget/SwipeRefreshLayout;)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$7;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method
