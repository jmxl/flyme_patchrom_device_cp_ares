.class final Lcom/android/server/am/ActivityManagerService$FreezeResult;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FreezeResult"
.end annotation


# instance fields
.field public didSomething:Z

.field public realDidFreezeSomething:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x0

    .line 25321
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$FreezeResult;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25322
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeResult;->didSomething:Z

    .line 25323
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$FreezeResult;->realDidFreezeSomething:Z

    .line 25321
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$FreezeResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$FreezeResult;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method
