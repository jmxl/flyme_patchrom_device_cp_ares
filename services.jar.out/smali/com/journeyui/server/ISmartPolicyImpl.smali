.class public abstract Lcom/journeyui/server/ISmartPolicyImpl;
.super Landroid/os/Binder;
.source "ISmartPolicyImpl.java"

# interfaces
.implements Lcom/journeyui/server/ISmartPolicyService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/journeyui/server/ISmartPolicyService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 13
    if-nez p0, :cond_0

    .line 14
    return-object v1

    .line 16
    :cond_0
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartPolicyService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/journeyui/server/ISmartPolicyService;

    .line 17
    .local v0, "in":Lcom/journeyui/server/ISmartPolicyService;
    if-eqz v0, :cond_1

    .line 18
    return-object v0

    .line 20
    :cond_1
    new-instance v1, Lcom/journeyui/server/SmartPolicyProxy;

    invoke-direct {v1, p0}, Lcom/journeyui/server/SmartPolicyProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 25
    return-object p0
.end method
