.class Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentMenuRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    .line 9261
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 9264
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 9265
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-wrap24(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 9266
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PaymentMenuRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->-wrap19(Lcom/android/server/policy/PhoneWindowManager;Z)V

    .line 9263
    return-void
.end method
