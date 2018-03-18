.class Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;
.super Landroid/widget/ScrollView;
.source "ZeusisDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/dialog/ZeusisDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalScrollView"
.end annotation


# instance fields
.field private mIsRtl:Z

.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;


# direct methods
.method public constructor <init>(Lcom/zeusis/widget/dialog/ZeusisDialog;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 723
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->mIsRtl:Z

    .line 722
    return-void
.end method


# virtual methods
.method public isLayoutRtl()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->mIsRtl:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v1, 0x0

    .line 745
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 747
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 748
    .local v0, "child":Landroid/view/View;
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/zeusis/widget/dialog/BaseDialog;->showDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 744
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 727
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    .line 728
    .local v0, "rtl":Z
    :goto_0
    iget-boolean v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->mIsRtl:Z

    if-eq v2, v0, :cond_1

    .line 729
    iput-boolean v0, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->mIsRtl:Z

    .line 730
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 731
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 732
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get1(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/TextView;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get1(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/TextView;

    move-result-object v3

    iget-boolean v2, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$InternalScrollView;->mIsRtl:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setTextDirection(I)V

    .line 735
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    .line 726
    :cond_1
    return-void

    .line 727
    .end local v0    # "rtl":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "rtl":Z
    goto :goto_0

    .line 733
    .restart local v1    # "v":Landroid/view/View;
    :cond_3
    const/4 v2, 0x3

    goto :goto_1
.end method
