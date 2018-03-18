.class public Lcom/android/server/policy/PhoneWindowManager$AutoSleepGestureToSleepReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSleepGestureToSleepReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9104
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9107
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "AutoSleepGestureToSleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9108
    const-string/jumbo v0, "/sys/touchscreen/sleep_gesture_enable"

    const-string/jumbo v1, "0x100"

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->-wrap3(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9106
    return-void
.end method
