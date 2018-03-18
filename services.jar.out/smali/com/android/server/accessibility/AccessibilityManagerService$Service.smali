.class Lcom/android/server/accessibility/AccessibilityManagerService$Service;
.super Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;
    }
.end annotation


# instance fields
.field mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field mComponentName:Landroid/content/ComponentName;

.field public mEventDispatchHandler:Landroid/os/Handler;

.field mEventTypes:I

.field mFeedbackType:I

.field mFetchFlags:I

.field mId:I

.field mIntent:Landroid/content/Intent;

.field public final mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

.field mIsAutomation:Z

.field mIsDefault:Z

.field mNotificationTimeout:J

.field final mOverlayWindowToken:Landroid/os/IBinder;

.field mPackageNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field mRequestEnhancedWebAccessibility:Z

.field mRequestFilterKeyEvents:Z

.field mRequestTouchExplorationMode:Z

.field final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field mRetrieveInteractiveWindows:Z

.field mService:Landroid/os/IBinder;

.field mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field final mUserId:I

.field mWasConnectedAndDied:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$Service;ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyClearAccessibilityCacheInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "gestureId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyGestureInternal(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/graphics/Region;FFF)V
    .locals 0
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifyMagnificationChangedInternal(Landroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)V
    .locals 0
    .param p1, "showState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->notifySoftKeyboardShowModeChangedInternal(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "accessibilityServiceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v2, 0x0

    .line 2268
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/accessibilityservice/IAccessibilityServiceConnection$Stub;-><init>()V

    .line 2207
    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 2221
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    .line 2245
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 2249
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 2248
    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    .line 2255
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    .line 2265
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 2266
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 2265
    invoke-direct {v2, p0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 2270
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 2271
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2272
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get19()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set0(I)I

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    .line 2273
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    .line 2274
    iput-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2275
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get18()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    .line 2276
    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v2, :cond_0

    .line 2277
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 2278
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.client_label"

    .line 2279
    const v4, 0x104048a

    .line 2278
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2282
    .local v0, "idendtity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.client_intent"

    .line 2283
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2282
    invoke-static {v4, v6, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2288
    .end local v0    # "idendtity":J
    :cond_0
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2269
    return-void

    .line 2284
    .restart local v0    # "idendtity":J
    :catchall_0
    move-exception v2

    .line 2285
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2284
    throw v2
.end method

.method private expandNotifications()V
    .locals 5

    .prologue
    .line 3369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3371
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3372
    const-string/jumbo v4, "statusbar"

    .line 3371
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 3373
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V

    .line 3375
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3368
    return-void
.end method

.method private expandQuickSettings()V
    .locals 5

    .prologue
    .line 3379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3381
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3382
    const-string/jumbo v4, "statusbar"

    .line 3381
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 3383
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V

    .line 3385
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3378
    return-void
.end method

.method private getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .locals 3
    .param p1, "windowId"    # I

    .prologue
    const/4 v2, 0x0

    .line 3410
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get4(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 3411
    .local v0, "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    if-nez v0, :cond_0

    .line 3412
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;

    .line 3414
    .restart local v0    # "wrapper":Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;
    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3415
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;->-get0(Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    return-object v1

    .line 3420
    :cond_1
    return-object v2
.end method

.method private isCalledForCurrentUserLocked()Z
    .locals 3

    .prologue
    .line 2483
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    .line 2484
    const/4 v2, -0x2

    .line 2483
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    .line 2485
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAccessibilityEventInternal(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3201
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3206
    .local v1, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 3207
    return-void

    .line 3213
    :cond_0
    if-nez p2, :cond_2

    .line 3230
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    move-object p2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3231
    if-nez p2, :cond_1

    monitor-exit v4

    .line 3232
    return-void

    .line 3234
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3236
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3237
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setConnectionId(I)V

    .line 3241
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSealed(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 3245
    :try_start_3
    invoke-interface {v1, p2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3252
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 3198
    :goto_1
    return-void

    .line 3239
    :cond_3
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3201
    .end local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3249
    .restart local v1    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v2

    .line 3250
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error during sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3252
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    .line 3251
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 3252
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 3251
    throw v3
.end method

.method private notifyClearAccessibilityCacheInternal()V
    .locals 4

    .prologue
    .line 3331
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 3334
    if-eqz v0, :cond_0

    .line 3336
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->clearAccessibilityCache()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3329
    :cond_0
    :goto_0
    return-void

    .line 3331
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3337
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 3338
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    const-string/jumbo v3, "Error during requesting accessibility info cache to be cleared."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyGestureInternal(I)V
    .locals 5
    .param p1, "gestureId"    # I

    .prologue
    .line 3316
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3317
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 3319
    if-eqz v0, :cond_0

    .line 3321
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onGesture(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3314
    :cond_0
    :goto_0
    return-void

    .line 3316
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3322
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 3323
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error during sending gesture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3324
    const-string/jumbo v4, " to "

    .line 3323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3324
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 3323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyMagnificationChangedInternal(Landroid/graphics/Region;FFF)V
    .locals 5
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 3283
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 3286
    if-eqz v0, :cond_0

    .line 3288
    :try_start_1
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onMagnificationChanged(Landroid/graphics/Region;FFF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3281
    :cond_0
    :goto_0
    return-void

    .line 3283
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3289
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 3290
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending magnification changes to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifySoftKeyboardShowModeChangedInternal(I)V
    .locals 5
    .param p1, "showState"    # I

    .prologue
    .line 3301
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    monitor-exit v2

    .line 3304
    if-eqz v0, :cond_0

    .line 3306
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onSoftKeyboardShowModeChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3299
    :cond_0
    :goto_0
    return-void

    .line 3301
    .end local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 3307
    .restart local v0    # "listener":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :catch_0
    move-exception v1

    .line 3308
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error sending soft keyboard show mode changes to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private openRecents()V
    .locals 4

    .prologue
    .line 3389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3392
    .local v2, "token":J
    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 3391
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 3393
    .local v0, "statusBarService":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    .line 3395
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3388
    return-void
.end method

.method private resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 1
    .param p1, "windowId"    # I
    .param p2, "focusType"    # I

    .prologue
    .line 3431
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 3432
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mActiveWindowId:I

    return v0

    .line 3434
    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 3435
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 3436
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mFocusedWindowId:I

    return v0

    .line 3437
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 3438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mAccessibilityFocusedWindowId:I

    return v0

    .line 3441
    :cond_2
    return p1
.end method

.method private resolveAccessibilityWindowIdLocked(I)I
    .locals 1
    .param p1, "accessibilityWindowId"    # I

    .prologue
    .line 3424
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 3425
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0

    .line 3427
    :cond_0
    return p1
.end method

.method private sendDownAndUpKeyEvents(I)V
    .locals 19
    .param p1, "keyCode"    # I

    .prologue
    .line 3345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 3348
    .local v16, "token":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3349
    .local v2, "downTime":J
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3350
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 3351
    const/16 v13, 0x101

    const/4 v14, 0x0

    move-wide v4, v2

    move/from16 v7, p1

    .line 3349
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v15

    .line 3352
    .local v15, "down":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 3353
    const/4 v7, 0x0

    .line 3352
    invoke-virtual {v6, v15, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 3354
    invoke-virtual {v15}, Landroid/view/KeyEvent;->recycle()V

    .line 3357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3358
    .local v4, "upTime":J
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3359
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    .line 3360
    const/16 v13, 0x101

    const/4 v14, 0x0

    move/from16 v7, p1

    .line 3358
    invoke-static/range {v2 .. v14}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3361
    .local v18, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v6

    .line 3362
    const/4 v7, 0x0

    .line 3361
    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v7}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 3363
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3365
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3344
    return-void
.end method

.method private showGlobalActions()V
    .locals 1

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->showGlobalActions()V

    .line 3398
    return-void
.end method

.method private toggleSplitScreen()V
    .locals 1

    .prologue
    .line 3403
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 3402
    return-void
.end method


# virtual methods
.method public bindLocked()Z
    .locals 7

    .prologue
    .line 2332
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2333
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v3, :cond_1

    .line 2334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2336
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 2337
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIntent:Landroid/content/Intent;

    .line 2339
    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2338
    const v6, 0x2000001

    .line 2336
    invoke-virtual {v3, v4, p0, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2340
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2343
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2359
    .end local v0    # "identity":J
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2342
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 2343
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2342
    throw v3

    .line 2346
    .end local v0    # "identity":J
    :cond_1
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2347
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get8(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;

    invoke-direct {v4, p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2357
    invoke-static {v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->-set1(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    goto :goto_0
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 3132
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3137
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isConnectedLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v2

    .line 3138
    return-void

    .line 3140
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    .line 3141
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 3142
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 3143
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 3144
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-eqz v1, :cond_1

    .line 3146
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 3149
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3150
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3151
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    .line 3152
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap2(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    .line 3154
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/accessibility/MagnificationController;->getIdOfLastServiceToMagnify()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 3155
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    .line 3157
    :cond_2
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 3131
    return-void

    .line 3132
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public canReceiveEventsLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2400
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2417
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    .line 2416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableSelf()V
    .locals 8

    .prologue
    .line 2383
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2384
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v3, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    .line 2385
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 2388
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2389
    const-string/jumbo v5, "enabled_accessibility_services"

    .line 2390
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    .line 2388
    invoke-static {v3, v5, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap19(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/util/Set;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2392
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2394
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "identity":J
    :cond_0
    monitor-exit v4

    .line 2382
    return-void

    .line 2391
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 2392
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2391
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2383
    .end local v0    # "identity":J
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3072
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DUMP"

    const-string/jumbo v2, "dump"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap3(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3074
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Service[label="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 3075
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3074
    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", feedbackType"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3077
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    invoke-static {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3076
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", capabilities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", eventTypes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3080
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 3079
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", notificationTimeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3082
    const-string/jumbo v0, "]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3071
    return-void

    .line 3073
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 18
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "interactionId"    # I
    .param p5, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p6, "flags"    # I
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2646
    const/4 v2, 0x0

    .line 2647
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    .line 2648
    .local v5, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2649
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2650
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2652
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 2654
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 2655
    .local v13, "permissionGranted":Z
    if-nez v13, :cond_1

    .line 2656
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2658
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 2659
    .local v2, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v2, :cond_2

    .line 2660
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2663
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2665
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2666
    const/4 v5, 0x0

    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v4

    .line 2669
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2670
    .local v9, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2671
    .local v14, "identityToken":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v12

    .line 2674
    .local v12, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int v8, v3, p6

    move-wide/from16 v3, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v10, p7

    .line 2673
    invoke-interface/range {v2 .. v12}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfoByAccessibilityId(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2676
    const/4 v3, 0x1

    .line 2682
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2684
    if-eqz v5, :cond_4

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2685
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2676
    :cond_4
    return v3

    .line 2648
    .end local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v9    # "interrogatingPid":I
    .end local v12    # "spec":Landroid/view/MagnificationSpec;
    .end local v13    # "permissionGranted":Z
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedWindowId":I
    .restart local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2677
    .end local v5    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v9    # "interrogatingPid":I
    .restart local v12    # "spec":Landroid/view/MagnificationSpec;
    .restart local v13    # "permissionGranted":Z
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    .line 2682
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2684
    if-eqz v5, :cond_5

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2685
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2688
    :cond_5
    const/4 v3, 0x0

    return v3

    .line 2681
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v3

    .line 2682
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2684
    if-eqz v5, :cond_6

    invoke-static {v2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2685
    invoke-virtual {v5}, Landroid/graphics/Region;->recycle()V

    .line 2681
    :cond_6
    throw v3
.end method

.method public findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2595
    const/4 v3, 0x0

    .line 2596
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2597
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2598
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2599
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2601
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 2603
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2604
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2605
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2607
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2608
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2609
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2612
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2614
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2615
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2618
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2619
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2620
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2623
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2622
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByText(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2625
    const/4 v4, 0x1

    .line 2631
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2634
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2625
    :cond_4
    return v4

    .line 2597
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2626
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2631
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2634
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2637
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2630
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2631
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2634
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2630
    :cond_6
    throw v4
.end method

.method public findAccessibilityNodeInfosByViewId(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "viewIdResName"    # Ljava/lang/String;
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2544
    const/4 v3, 0x0

    .line 2545
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2546
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2547
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2548
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2550
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 2552
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2553
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2554
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2556
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2557
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2558
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2561
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2563
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2564
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2567
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2568
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2569
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2572
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2571
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findAccessibilityNodeInfosByViewId(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2574
    const/4 v4, 0x1

    .line 2580
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2583
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2574
    :cond_4
    return v4

    .line 2546
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2575
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2580
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2583
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2586
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2579
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2580
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2583
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2579
    :cond_6
    throw v4
.end method

.method public findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 21
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "focusType"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2697
    const/4 v5, 0x0

    .line 2698
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v9

    .line 2699
    .local v9, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2700
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 2701
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2703
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdForFindFocusLocked(II)I

    move-result v20

    .line 2706
    .local v20, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 2707
    .local v4, "permissionGranted":Z
    if-nez v4, :cond_1

    .line 2708
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2710
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 2711
    .local v5, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v5, :cond_2

    .line 2712
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 2715
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2717
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2718
    const/4 v9, 0x0

    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v7

    .line 2721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 2722
    .local v13, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 2723
    .local v18, "identityToken":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v20

    invoke-static {v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v16

    .line 2726
    .local v16, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-wide/from16 v14, p7

    .line 2725
    invoke-interface/range {v5 .. v16}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->findFocus(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2728
    const/4 v6, 0x1

    .line 2734
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2736
    if-eqz v9, :cond_4

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2737
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2728
    :cond_4
    return v6

    .line 2699
    .end local v4    # "permissionGranted":Z
    .end local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v13    # "interrogatingPid":I
    .end local v16    # "spec":Landroid/view/MagnificationSpec;
    .end local v18    # "identityToken":J
    .end local v20    # "resolvedWindowId":I
    .restart local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2729
    .end local v9    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v4    # "permissionGranted":Z
    .restart local v5    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v13    # "interrogatingPid":I
    .restart local v16    # "spec":Landroid/view/MagnificationSpec;
    .restart local v18    # "identityToken":J
    .restart local v20    # "resolvedWindowId":I
    :catch_0
    move-exception v17

    .line 2734
    .local v17, "re":Landroid/os/RemoteException;
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2736
    if-eqz v9, :cond_5

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2737
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2740
    :cond_5
    const/4 v6, 0x0

    return v6

    .line 2733
    .end local v17    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    .line 2734
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2736
    if-eqz v9, :cond_6

    invoke-static {v5}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2737
    invoke-virtual {v9}, Landroid/graphics/Region;->recycle()V

    .line 2733
    :cond_6
    throw v6
.end method

.method public focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 19
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "direction"    # I
    .param p5, "interactionId"    # I
    .param p6, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p7, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    const/4 v3, 0x0

    .line 2750
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 2751
    .local v7, "partialInteractiveRegion":Landroid/graphics/Region;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2752
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2753
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2755
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v18

    .line 2757
    .local v18, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2758
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2759
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2761
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2762
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2763
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2766
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->computePartialInteractiveRegionForWindowLocked(ILandroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2768
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2769
    const/4 v7, 0x0

    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :cond_3
    monitor-exit v5

    .line 2772
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2773
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2774
    .local v16, "identityToken":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/view/MagnificationSpec;

    move-result-object v14

    .line 2777
    .local v14, "spec":Landroid/view/MagnificationSpec;
    :try_start_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v12, p7

    .line 2776
    invoke-interface/range {v3 .. v14}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->focusSearch(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2779
    const/4 v4, 0x1

    .line 2785
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2787
    if-eqz v7, :cond_4

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2788
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2779
    :cond_4
    return v4

    .line 2751
    .end local v2    # "permissionGranted":Z
    .end local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v11    # "interrogatingPid":I
    .end local v14    # "spec":Landroid/view/MagnificationSpec;
    .end local v16    # "identityToken":J
    .end local v18    # "resolvedWindowId":I
    .restart local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2780
    .end local v7    # "partialInteractiveRegion":Landroid/graphics/Region;
    .restart local v2    # "permissionGranted":Z
    .restart local v3    # "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "spec":Landroid/view/MagnificationSpec;
    .restart local v16    # "identityToken":J
    .restart local v18    # "resolvedWindowId":I
    :catch_0
    move-exception v15

    .line 2785
    .local v15, "re":Landroid/os/RemoteException;
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2787
    if-eqz v7, :cond_5

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2788
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2791
    :cond_5
    const/4 v4, 0x0

    return v4

    .line 2784
    .end local v15    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2785
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2787
    if-eqz v7, :cond_6

    invoke-static {v3}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2788
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 2784
    :cond_6
    throw v4
.end method

.method public getMagnificationCenterX()F
    .locals 4

    .prologue
    .line 2958
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2959
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2960
    const/4 v3, 0x0

    monitor-exit v2

    return v3

    :cond_0
    monitor-exit v2

    .line 2963
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2965
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 2967
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2965
    return v2

    .line 2958
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2966
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 2967
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2966
    throw v2
.end method

.method public getMagnificationCenterY()F
    .locals 4

    .prologue
    .line 2973
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2974
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2975
    const/4 v3, 0x0

    monitor-exit v2

    return v3

    :cond_0
    monitor-exit v2

    .line 2978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2980
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 2982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2980
    return v2

    .line 2973
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2981
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 2982
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2981
    throw v2
.end method

.method public getMagnificationRegion()Landroid/graphics/Region;
    .locals 8

    .prologue
    .line 2932
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2933
    :try_start_0
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    .line 2934
    .local v5, "region":Landroid/graphics/Region;
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    .line 2935
    return-object v5

    .line 2937
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v4

    .line 2938
    .local v4, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v0

    .line 2939
    .local v0, "forceRegistration":Z
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isRegisteredLocked()Z

    move-result v1

    .line 2940
    .local v1, "initiallyRegistered":Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2941
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->register()V

    .line 2943
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 2945
    .local v2, "identity":J
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationRegion(Landroid/graphics/Region;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2948
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2949
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 2950
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->unregister()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    monitor-exit v7

    .line 2946
    return-object v5

    .line 2947
    :catchall_0
    move-exception v6

    .line 2948
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2949
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    .line 2950
    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    .line 2947
    :cond_3
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2932
    .end local v0    # "forceRegistration":Z
    .end local v1    # "initiallyRegistered":Z
    .end local v2    # "identity":J
    .end local v4    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    .end local v5    # "region":Landroid/graphics/Region;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public getMagnificationScale()F
    .locals 4

    .prologue
    .line 2917
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2918
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 2919
    const/high16 v3, 0x3f800000    # 1.0f

    monitor-exit v2

    return v3

    :cond_0
    monitor-exit v2

    .line 2922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2924
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 2926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2924
    return v2

    .line 2917
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2925
    .restart local v0    # "identity":J
    :catchall_1
    move-exception v2

    .line 2926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2925
    throw v2
.end method

.method public getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2411
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 2410
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 6
    .param p1, "windowId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2518
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2519
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2520
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 2521
    return-object v5

    .line 2524
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 2525
    .local v0, "permissionGranted":Z
    if-nez v0, :cond_1

    monitor-exit v4

    .line 2526
    return-object v5

    .line 2528
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->-wrap0(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 2529
    .local v1, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    if-eqz v1, :cond_2

    .line 2530
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    .line 2531
    .local v2, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 2532
    return-object v2

    .end local v2    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_2
    monitor-exit v4

    .line 2534
    return-object v5

    .line 2519
    .end local v0    # "permissionGranted":Z
    .end local v1    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getWindows()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2490
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap16(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 2491
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2492
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    .line 2493
    return-object v8

    .line 2496
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canRetrieveWindowsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2497
    .local v1, "permissionGranted":Z
    if-nez v1, :cond_1

    monitor-exit v7

    .line 2498
    return-object v8

    .line 2500
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    monitor-exit v7

    .line 2501
    return-object v8

    .line 2503
    :cond_2
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    .local v5, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 2505
    .local v4, "windowCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 2506
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 2508
    .local v2, "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v3

    .line 2509
    .local v3, "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 2510
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2505
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "window":Landroid/view/accessibility/AccessibilityWindowInfo;
    .end local v3    # "windowClone":Landroid/view/accessibility/AccessibilityWindowInfo;
    :cond_3
    monitor-exit v7

    .line 2512
    return-object v5

    .line 2491
    .end local v0    # "i":I
    .end local v1    # "permissionGranted":Z
    .end local v4    # "windowCount":I
    .end local v5    # "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityWindowInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public isConnectedLocked()Z
    .locals 1

    .prologue
    .line 3128
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 3167
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3168
    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 3172
    .local v0, "eventType":I
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 3174
    .local v2, "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-wide v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    .line 3175
    const/16 v4, 0x800

    if-eq v0, v4, :cond_1

    .line 3177
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityEvent;

    .line 3178
    .local v3, "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3179
    if-eqz v3, :cond_0

    .line 3180
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3181
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 3183
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3189
    .end local v3    # "oldEvent":Landroid/view/accessibility/AccessibilityEvent;
    .local v1, "message":Landroid/os/Message;
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 3166
    return-void

    .line 3186
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "message":Landroid/os/Message;
    goto :goto_0

    .line 3167
    .end local v0    # "eventType":I
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "newEvent":Landroid/view/accessibility/AccessibilityEvent;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public notifyClearAccessibilityNodeInfoCache()V
    .locals 2

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    .line 3263
    const/4 v1, 0x2

    .line 3262
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->sendEmptyMessage(I)Z

    .line 3261
    return-void
.end method

.method public notifyGesture(I)V
    .locals 3
    .param p1, "gestureId"    # I

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    const/4 v1, 0x1

    .line 3258
    const/4 v2, 0x0

    .line 3257
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3256
    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V

    .line 3267
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 1
    .param p1, "showState"    # I

    .prologue
    .line 3273
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->notifySoftKeyboardShowModeChangedLocked(I)V

    .line 3272
    return-void
.end method

.method public onAdded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3092
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3094
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    .line 3095
    const/16 v4, 0x7f0

    .line 3094
    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3091
    return-void

    .line 3096
    :catchall_0
    move-exception v2

    .line 3097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3096
    throw v2
.end method

.method public onRemoved()V
    .locals 5

    .prologue
    .line 3102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3104
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get16(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3101
    return-void

    .line 3105
    :catchall_0
    move-exception v2

    .line 3106
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3105
    throw v2
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 2445
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2446
    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eq v2, p2, :cond_1

    .line 2447
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 2448
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2450
    :cond_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2459
    :cond_1
    :try_start_2
    invoke-static {p2}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2460
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    .line 2461
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap15(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2462
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z

    if-eqz v2, :cond_3

    .line 2463
    :cond_2
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindingServices:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2464
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mWasConnectedAndDied:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2466
    :try_start_3
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v2, p0, v4, v5}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V

    .line 2467
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit v3

    .line 2444
    return-void

    .line 2453
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_0
    move-exception v0

    .line 2454
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v2, "AccessibilityManagerService"

    const-string/jumbo v4, "Failed registering death link"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    .line 2456
    return-void

    .line 2468
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catch_1
    move-exception v0

    .line 2469
    .restart local v0    # "re":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v2, "AccessibilityManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error while setting connection for service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2445
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2474
    .restart local v1    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_3
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3088
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 3087
    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z
    .locals 18
    .param p1, "accessibilityWindowId"    # I
    .param p2, "accessibilityNodeId"    # J
    .param p4, "action"    # I
    .param p5, "arguments"    # Landroid/os/Bundle;
    .param p6, "interactionId"    # I
    .param p7, "callback"    # Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .param p8, "interrogatingTid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2838
    const/4 v3, 0x0

    .line 2839
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2840
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 2841
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2843
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resolveAccessibilityWindowIdLocked(I)I

    move-result v17

    .line 2844
    .local v17, "resolvedWindowId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canGetAccessibilityNodeInfoLocked(Lcom/android/server/accessibility/AccessibilityManagerService$Service;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2846
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    .line 2847
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 2849
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->getConnectionLocked(I)Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 2850
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    if-nez v3, :cond_2

    .line 2851
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    :cond_2
    monitor-exit v5

    .line 2855
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 2856
    .local v11, "interrogatingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2860
    .local v14, "identityToken":J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 2861
    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 2860
    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 2864
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v12, p8

    .line 2863
    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2870
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2872
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 2839
    .end local v2    # "permissionGranted":Z
    .end local v11    # "interrogatingPid":I
    .end local v14    # "identityToken":J
    .end local v17    # "resolvedWindowId":I
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2865
    .restart local v2    # "permissionGranted":Z
    .local v3, "connection":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .restart local v11    # "interrogatingPid":I
    .restart local v14    # "identityToken":J
    .restart local v17    # "resolvedWindowId":I
    :catch_0
    move-exception v16

    .line 2870
    .local v16, "re":Landroid/os/RemoteException;
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2869
    .end local v16    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    .line 2870
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2869
    throw v4
.end method

.method public performGlobalAction(I)Z
    .locals 9
    .param p1, "action"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2877
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2878
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    .line 2879
    return v8

    :cond_0
    monitor-exit v2

    .line 2882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2884
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get10(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2885
    const/4 v3, 0x3

    const/4 v6, 0x0

    .line 2884
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2886
    packed-switch p1, :pswitch_data_0

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2909
    return v8

    .line 2877
    .end local v0    # "identity":J
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 2888
    .restart local v0    # "identity":J
    :pswitch_0
    const/4 v2, 0x4

    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2889
    return v7

    .line 2891
    :pswitch_1
    const/4 v2, 0x3

    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->sendDownAndUpKeyEvents(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2892
    return v7

    .line 2894
    :pswitch_2
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->openRecents()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2895
    return v7

    .line 2897
    :pswitch_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandNotifications()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2898
    return v7

    .line 2900
    :pswitch_4
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->expandQuickSettings()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2901
    return v7

    .line 2903
    :pswitch_5
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->showGlobalActions()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    return v7

    .line 2906
    :pswitch_6
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->toggleSplitScreen()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2907
    return v7

    .line 2910
    :catchall_1
    move-exception v2

    .line 2911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2910
    throw v2

    .line 2886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public resetLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3120
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    .line 3121
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3122
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mService:Landroid/os/IBinder;

    .line 3124
    :cond_1
    iput-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 3110
    return-void

    .line 3117
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resetMagnification(Z)Z
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v5, 0x0

    .line 2988
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2989
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 2990
    return v5

    .line 2992
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 2993
    .local v2, "permissionGranted":Z
    if-nez v2, :cond_1

    monitor-exit v4

    .line 2994
    return v5

    :cond_1
    monitor-exit v4

    .line 2997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2999
    .local v0, "identity":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    .line 3001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2999
    return v3

    .line 2988
    .end local v0    # "identity":J
    .end local v2    # "permissionGranted":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3000
    .restart local v0    # "identity":J
    .restart local v2    # "permissionGranted":Z
    :catchall_1
    move-exception v3

    .line 3001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3000
    throw v3
.end method

.method public sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 12
    .param p1, "sequence"    # I
    .param p2, "gestureSteps"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 2796
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 2797
    :try_start_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canPerformGestures(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long v0, v8, v10

    .line 2800
    .local v0, "endMillis":J
    :goto_0
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2801
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    cmp-long v6, v8, v0

    if-gez v6, :cond_0

    .line 2803
    :try_start_1
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2804
    :catch_0
    move-exception v3

    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 2808
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2809
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 2810
    .local v5, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-static {v5}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getMotionEventsFromGestureSteps(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2813
    .local v2, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 2814
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/MotionEventInjector;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v6, v2, v8, p1}, Lcom/android/server/accessibility/MotionEventInjector;->injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 2815
    return-void

    .line 2817
    :cond_1
    :try_start_3
    const-string/jumbo v6, "AccessibilityManagerService"

    const-string/jumbo v8, "Gesture is not well-formed"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "endMillis":J
    .end local v2    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    .end local v5    # "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    :cond_2
    :goto_1
    monitor-exit v7

    .line 2825
    :try_start_4
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2795
    :goto_2
    return-void

    .line 2820
    .restart local v0    # "endMillis":J
    :cond_3
    :try_start_5
    const-string/jumbo v6, "AccessibilityManagerService"

    const-string/jumbo v8, "MotionEventInjector installation timed out"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2796
    .end local v0    # "endMillis":J
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 2826
    :catch_1
    move-exception v4

    .line 2827
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "AccessibilityManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error sending motion event injection failure to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2828
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 2827
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 6
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2292
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mEventTypes:I

    .line 2293
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFeedbackType:I

    .line 2294
    iget-object v0, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 2295
    .local v0, "packageNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2296
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mPackageNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2298
    :cond_0
    iget-wide v4, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mNotificationTimeout:J

    .line 2299
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsDefault:Z

    .line 2301
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2302
    const/16 v4, 0x10

    .line 2301
    if-lt v1, v4, :cond_2

    .line 2303
    :cond_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 2304
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 2310
    :cond_2
    :goto_1
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 2311
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    .line 2316
    :goto_2
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestTouchExplorationMode:Z

    .line 2318
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestEnhancedWebAccessibility:Z

    .line 2320
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRequestFilterKeyEvents:Z

    .line 2322
    iget v1, p1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_9

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mRetrieveInteractiveWindows:Z

    .line 2291
    return-void

    :cond_3
    move v1, v3

    .line 2299
    goto :goto_0

    .line 2306
    :cond_4
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_1

    .line 2313
    :cond_5
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mFetchFlags:I

    goto :goto_2

    :cond_6
    move v1, v3

    .line 2316
    goto :goto_3

    :cond_7
    move v1, v3

    .line 2318
    goto :goto_4

    :cond_8
    move v1, v3

    .line 2320
    goto :goto_5

    :cond_9
    move v2, v3

    .line 2322
    goto :goto_6
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->setMagnificationCallbackEnabled(Z)V

    .line 3031
    return-void
.end method

.method public setMagnificationScaleAndCenter(FFFZ)Z
    .locals 10
    .param p1, "scale"    # F
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3008
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3009
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v9

    .line 3010
    return v2

    .line 3012
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    .line 3013
    .local v8, "permissionGranted":Z
    if-nez v8, :cond_1

    monitor-exit v9

    .line 3014
    return v2

    .line 3016
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v6

    .line 3018
    .local v6, "identity":J
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    .line 3019
    .local v0, "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->isRegisteredLocked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3020
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->register()V

    .line 3023
    :cond_2
    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mId:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 3022
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenter(FFFZI)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 3025
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v9

    .line 3022
    return v1

    .line 3024
    .end local v0    # "magnificationController":Lcom/android/server/accessibility/MagnificationController;
    :catchall_0
    move-exception v1

    .line 3025
    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3024
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3008
    .end local v6    # "identity":J
    .end local v8    # "permissionGranted":Z
    :catchall_1
    move-exception v1

    monitor-exit v9

    throw v1
.end method

.method public setOnKeyEventResult(ZI)V
    .locals 1
    .param p1, "handled"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->setOnKeyEventResult(Lcom/android/server/accessibility/AccessibilityManagerService$Service;ZI)V

    .line 2404
    return-void
.end method

.method public setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 7
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 2422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2424
    .local v0, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2428
    :try_start_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2429
    .local v2, "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-eqz v2, :cond_0

    .line 2430
    invoke-virtual {v2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->updateDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2431
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 2435
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v4, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2436
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap18(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2421
    return-void

    .line 2433
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2424
    .end local v2    # "oldInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2438
    :catchall_1
    move-exception v4

    .line 2439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2438
    throw v4
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 3067
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mInvocationHandler:Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$Service$InvocationHandler;->setSoftKeyboardCallbackEnabled(Z)V

    .line 3066
    return-void
.end method

.method public setSoftKeyboardShowMode(I)Z
    .locals 6
    .param p1, "showMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 3038
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3039
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->isCalledForCurrentUserLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v4

    .line 3040
    return v5

    .line 3043
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v4

    .line 3046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3050
    .local v0, "identity":J
    if-nez p1, :cond_1

    .line 3051
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    .line 3056
    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3057
    const-string/jumbo v4, "accessibility_soft_keyboard_mode"

    .line 3058
    iget v5, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    .line 3056
    invoke-static {v3, v4, p1, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3062
    const/4 v3, 0x1

    return v3

    .line 3038
    .end local v0    # "identity":J
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 3053
    .restart local v0    # "identity":J
    .restart local v2    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mComponentName:Landroid/content/ComponentName;

    iput-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 3059
    :catchall_1
    move-exception v3

    .line 3060
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3059
    throw v3
.end method

.method public unbindLocked()Z
    .locals 3

    .prologue
    .line 2369
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    .line 2370
    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/KeyEventDispatcher;->flush(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    .line 2371
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->mIsAutomation:Z

    if-nez v1, :cond_0

    .line 2372
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2376
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap21(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->resetLocked()V

    .line 2378
    const/4 v1, 0x1

    return v1

    .line 2374
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->destroyUiAutomationService()V

    goto :goto_0
.end method
