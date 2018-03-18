.class final Lcom/journeyui/server/SmartPolicyTrigger$1;
.super Landroid/util/Singleton;
.source "SmartPolicyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/server/SmartPolicyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/journeyui/server/SmartPolicyTrigger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/journeyui/server/SmartPolicyTrigger;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/journeyui/server/SmartPolicyTrigger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/journeyui/server/SmartPolicyTrigger;-><init>(Lcom/journeyui/server/SmartPolicyTrigger;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/journeyui/server/SmartPolicyTrigger$1;->create()Lcom/journeyui/server/SmartPolicyTrigger;

    move-result-object v0

    return-object v0
.end method
