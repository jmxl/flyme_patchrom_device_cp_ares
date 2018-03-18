.class Lcom/android/server/policy/global/GlobalActionViewMediator$1;
.super Landroid/os/Handler;
.source "GlobalActionViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/global/GlobalActionViewMediator;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap1(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$1;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->-wrap0(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
