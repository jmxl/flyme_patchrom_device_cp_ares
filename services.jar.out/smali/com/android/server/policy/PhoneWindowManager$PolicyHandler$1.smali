.class Lcom/android/server/policy/PhoneWindowManager$PolicyHandler$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap4(Lcom/android/server/policy/PhoneWindowManager;)I

    .line 974
    return-void
.end method
