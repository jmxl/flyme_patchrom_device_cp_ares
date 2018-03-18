.class Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;
.super Lcom/zeusis/touchframe/IThumbListener$Stub;
.source "TouchFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/touchframe/TouchFrameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbTransport"
.end annotation


# static fields
.field private static final TYPE_TOUCH_EVENT:I = 0x1


# instance fields
.field handler:Landroid/os/Handler;

.field listener:Landroid/app/PendingIntent$OnFinished;

.field final synthetic this$0:Lcom/zeusis/touchframe/TouchFrameManager;


# direct methods
.method constructor <init>(Lcom/zeusis/touchframe/TouchFrameManager;Landroid/app/PendingIntent$OnFinished;)V
    .locals 1
    .param p1, "this$0"    # Lcom/zeusis/touchframe/TouchFrameManager;
    .param p2, "l"    # Landroid/app/PendingIntent$OnFinished;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->this$0:Lcom/zeusis/touchframe/TouchFrameManager;

    invoke-direct {p0}, Lcom/zeusis/touchframe/IThumbListener$Stub;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->listener:Landroid/app/PendingIntent$OnFinished;

    .line 115
    new-instance v0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport$1;

    invoke-direct {v0, p0}, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport$1;-><init>(Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;)V

    iput-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->handler:Landroid/os/Handler;

    .line 112
    return-void
.end method


# virtual methods
.method public _handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/view/MotionEvent;

    .line 136
    .local v6, "event":Landroid/view/MotionEvent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "event"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->listener:Landroid/app/PendingIntent$OnFinished;

    const/4 v3, 0x0

    move-object v2, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Landroid/app/PendingIntent$OnFinished;->onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 127
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method
