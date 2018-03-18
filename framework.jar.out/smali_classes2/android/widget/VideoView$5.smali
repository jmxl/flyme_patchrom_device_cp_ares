.class Landroid/widget/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    .prologue
    .line 500
    iput-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 502
    const-string/jumbo v2, "VideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v6}, Landroid/widget/VideoView;->-set4(Landroid/widget/VideoView;I)I

    .line 504
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, v6}, Landroid/widget/VideoView;->-set9(Landroid/widget/VideoView;I)I

    .line 505
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 506
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get2(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    .line 510
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 511
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get5(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    return v5

    .line 521
    :cond_1
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    .local v1, "r":Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 526
    const v0, 0x1040015

    .line 547
    .local v0, "messageId":I
    :goto_0
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    new-instance v3, Lcom/zeusis/widget/dialog/ZeusisDialog;

    iget-object v4, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/zeusis/widget/dialog/ZeusisDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Landroid/widget/VideoView;->-set5(Landroid/widget/VideoView;Lcom/zeusis/widget/dialog/ZeusisDialog;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 548
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zeusis/widget/dialog/ZeusisDialog;->message(I)Lcom/zeusis/widget/dialog/ZeusisDialog;

    .line 549
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    const v3, 0x1040010

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisDialog;->positiveAction(I)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 550
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    new-instance v3, Landroid/widget/VideoView$5$1;

    invoke-direct {v3, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisDialog;->positiveActionClickListener(Landroid/view/View$OnClickListener;)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 562
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/zeusis/widget/dialog/ZeusisDialog;->setShadeAnimation(Z)Lcom/zeusis/widget/dialog/BaseDialog;

    .line 563
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/zeusis/widget/dialog/ZeusisDialog;->setCancelable(Z)V

    .line 564
    iget-object v2, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get1(Landroid/widget/VideoView;)Lcom/zeusis/widget/dialog/ZeusisDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zeusis/widget/dialog/ZeusisDialog;->show()V

    .line 567
    .end local v0    # "messageId":I
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_2
    return v5

    .line 528
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_3
    const v0, 0x1040011

    .restart local v0    # "messageId":I
    goto :goto_0
.end method
