.class Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;
.super Ljava/lang/Object;
.source "SmartPolicyBrightnessController.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyThreadFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/journeyui/smartpolicy/SmartPolicyBrightnessController$MyThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    .local v0, "t":Ljava/lang/Thread;
    return-object v0
.end method
