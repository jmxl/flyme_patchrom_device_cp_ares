.class Lcom/android/server/notification/ZsNotificationHelper$1;
.super Ljava/lang/Object;
.source "ZsNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/ZsNotificationHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZsNotificationHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZsNotificationHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZsNotificationHelper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/notification/ZsNotificationHelper$1;->this$0:Lcom/android/server/notification/ZsNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/notification/ZsNotificationHelper$1;->this$0:Lcom/android/server/notification/ZsNotificationHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZsNotificationHelper;->-wrap0(Lcom/android/server/notification/ZsNotificationHelper;)V

    .line 73
    return-void
.end method
