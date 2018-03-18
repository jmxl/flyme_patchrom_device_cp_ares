.class final Landroid/app/SystemServiceRegistry$53;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/app/AppOomManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/app/AppOomManager;
    .locals 3
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 622
    const-string/jumbo v2, "appoom"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 623
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOomService;

    move-result-object v1

    .line 624
    .local v1, "service":Lcom/android/internal/app/IAppOomService;
    new-instance v2, Landroid/app/AppOomManager;

    invoke-direct {v2, p1, v1}, Landroid/app/AppOomManager;-><init>(Landroid/content/Context;Lcom/android/internal/app/IAppOomService;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$53;->createService(Landroid/app/ContextImpl;)Landroid/app/AppOomManager;

    move-result-object v0

    return-object v0
.end method
