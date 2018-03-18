.class Lcom/android/server/policy/GlobalActions$7;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->handleShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$DelayCloseDialog;->cancel()Z

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set0(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$DelayCloseDialog;)Lcom/android/server/policy/GlobalActions$DelayCloseDialog;

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get15(Lcom/android/server/policy/GlobalActions;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get15(Lcom/android/server/policy/GlobalActions;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get15(Lcom/android/server/policy/GlobalActions;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 288
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->-set4(Lcom/android/server/policy/GlobalActions;Ljava/util/Timer;)Ljava/util/Timer;

    .line 280
    :cond_1
    return-void
.end method
