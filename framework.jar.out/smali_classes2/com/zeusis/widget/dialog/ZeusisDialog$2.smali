.class Lcom/zeusis/widget/dialog/ZeusisDialog$2;
.super Ljava/lang/Object;
.source "ZeusisDialog.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/dialog/ZeusisDialog;->setScrollListener(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/dialog/ZeusisDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/dialog/ZeusisDialog;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    if-nez p2, :cond_0

    .line 417
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-static {v1}, Lcom/zeusis/widget/dialog/ZeusisDialog;->-get0(Lcom/zeusis/widget/dialog/ZeusisDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 418
    .local v0, "firstVisibleItemView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v1, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->showTitleDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 428
    .end local v0    # "firstVisibleItemView":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v1}, Lcom/zeusis/widget/dialog/BaseDialog;->hasActionButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v1, v3}, Lcom/zeusis/widget/dialog/BaseDialog;->showDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 409
    :cond_1
    return-void

    .line 422
    .restart local v0    # "firstVisibleItemView":Landroid/view/View;
    :cond_2
    iget-object v1, p0, Lcom/zeusis/widget/dialog/ZeusisDialog$2;->this$0:Lcom/zeusis/widget/dialog/ZeusisDialog;

    invoke-virtual {v1, v2}, Lcom/zeusis/widget/dialog/BaseDialog;->showTitleDivider(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 404
    return-void
.end method
