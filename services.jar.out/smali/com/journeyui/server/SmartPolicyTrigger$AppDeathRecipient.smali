.class final Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;
.super Ljava/lang/Object;
.source "SmartPolicyTrigger.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/server/SmartPolicyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyui/server/SmartPolicyTrigger;


# direct methods
.method private constructor <init>(Lcom/journeyui/server/SmartPolicyTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/journeyui/server/SmartPolicyTrigger;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;->this$0:Lcom/journeyui/server/SmartPolicyTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/journeyui/server/SmartPolicyTrigger;Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/journeyui/server/SmartPolicyTrigger;

    .prologue
    invoke-direct {p0, p1}, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;-><init>(Lcom/journeyui/server/SmartPolicyTrigger;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;->this$0:Lcom/journeyui/server/SmartPolicyTrigger;

    invoke-static {v0}, Lcom/journeyui/server/SmartPolicyTrigger;->-get0(Lcom/journeyui/server/SmartPolicyTrigger;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 63
    :try_start_0
    const-string/jumbo v0, "SmartPolicyTrigger"

    const-string/jumbo v2, "binderDied"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/journeyui/server/SmartPolicyTrigger$AppDeathRecipient;->this$0:Lcom/journeyui/server/SmartPolicyTrigger;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/journeyui/server/SmartPolicyTrigger;->-set0(Lcom/journeyui/server/SmartPolicyTrigger;Lcom/journeyui/server/ISmartPolicyService;)Lcom/journeyui/server/ISmartPolicyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
