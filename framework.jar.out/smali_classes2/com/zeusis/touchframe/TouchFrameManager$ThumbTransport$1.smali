.class Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport$1;
.super Landroid/os/Handler;
.source "TouchFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;-><init>(Lcom/zeusis/touchframe/TouchFrameManager;Landroid/app/PendingIntent$OnFinished;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;


# direct methods
.method constructor <init>(Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;)V
    .locals 0
    .param p1, "this$1"    # Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport$1;->this$1:Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport$1;->this$1:Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;

    invoke-virtual {v0, p1}, Lcom/zeusis/touchframe/TouchFrameManager$ThumbTransport;->_handleMessage(Landroid/os/Message;)V

    .line 117
    return-void
.end method
