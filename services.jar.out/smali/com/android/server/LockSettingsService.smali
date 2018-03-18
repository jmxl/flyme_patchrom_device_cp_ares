.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;,
        Lcom/android/server/LockSettingsService$1;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$Lifecycle;,
        Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;
    }
.end annotation


# static fields
.field private static final ACTION_NULL:Landroid/content/Intent;

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final FBE_ENCRYPTED_NOTIFICATION:I = 0x0

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SEPARATE_PROFILE_CHALLENGE_KEY:Ljava/lang/String; = "lockscreen.profilechallenge"

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final COMPLEX_PASSWOEKD_NUMBER:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mSeparateChallengeLock:Ljava/lang/Object;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

.field private final mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

.field private mUserManager:Landroid/os/UserManager;

.field private pin_text_length:I


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->maybeShowEncryptionNotifications()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsService;IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->removeUser(IZ)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 143
    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    .line 144
    const/16 v2, 0x3e8

    .line 143
    filled-new-array {v0, v1, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    .line 149
    sget-object v0, Lcom/android/server/LockSettingsService;->ACTION_NULL:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1694
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 1695
    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    .line 1696
    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    .line 1697
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    .line 1698
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    .line 1699
    const-string/jumbo v1, "lockscreen.password_type_alternate"

    aput-object v1, v0, v7

    .line 1700
    const-string/jumbo v1, "lockscreen.password_salt"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 1701
    const-string/jumbo v1, "lockscreen.disabled"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 1702
    const-string/jumbo v1, "lockscreen.options"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 1703
    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 1704
    const-string/jumbo v1, "lockscreen.biometricweakeverchosen"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 1705
    const-string/jumbo v1, "lockscreen.power_button_instantly_locks"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 1706
    const-string/jumbo v1, "lockscreen.passwordhistory"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 1707
    const-string/jumbo v1, "lock_pattern_autolock"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 1708
    const-string/jumbo v1, "lock_biometric_weak_flags"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 1709
    const-string/jumbo v1, "lock_pattern_visible_pattern"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 1710
    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1694
    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 1714
    new-array v0, v5, [Ljava/lang/String;

    .line 1715
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 1716
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 1714
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 1720
    new-array v0, v7, [Ljava/lang/String;

    .line 1721
    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    .line 1722
    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    .line 1723
    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    .line 1724
    const-string/jumbo v1, "lockscreen.profilechallenge"

    aput-object v1, v0, v6

    .line 1720
    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 1727
    new-array v0, v5, [Ljava/lang/String;

    .line 1728
    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    .line 1729
    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    .line 1727
    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 265
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 136
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    .line 138
    const-string/jumbo v0, "complex_password_number"

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->COMPLEX_PASSWOEKD_NUMBER:Ljava/lang/String;

    .line 415
    new-instance v0, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 268
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    .line 271
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 274
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 280
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 292
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 293
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 294
    new-instance v0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 295
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->register()V

    .line 265
    return-void
.end method

.method private addUserKeyAuth(I[B[B)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1207
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 1208
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1209
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1211
    .local v0, "callingId":J
    :try_start_0
    iget v4, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-interface {v2, p1, v4, p2, p3}, Landroid/os/storage/IMountService;->addUserKeyAuth(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1206
    return-void

    .line 1212
    :catchall_0
    move-exception v4

    .line 1213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1212
    throw v4
.end method

.method private checkCryptKeeperPermissions()Z
    .locals 5

    .prologue
    .line 742
    const/4 v1, 0x0

    .line 744
    .local v1, "permission_err":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 745
    const-string/jumbo v3, "android.permission.CRYPT_KEEPER"

    .line 746
    const-string/jumbo v4, "no permission to get the password"

    .line 744
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 607
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 608
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 609
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 612
    const-string/jumbo v5, " needs permission "

    .line 611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 612
    const-string/jumbo v5, "android.permission.READ_CONTACTS"

    .line 611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 612
    const-string/jumbo v5, " to read "

    .line 611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 613
    const-string/jumbo v5, " for user "

    .line 611
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 607
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 618
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 619
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 621
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, " needs permission "

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 622
    const-string/jumbo v5, " to read "

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 623
    const-string/jumbo v5, " for user "

    .line 621
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 617
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string/jumbo v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method private clearUserKeyProtection(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1185
    return-void
.end method

.method private doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Password can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_0
    new-instance v8, Lcom/android/server/LockSettingsService$6;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-wide v6, p4

    move-object/from16 v9, p7

    .line 1412
    invoke-direct/range {v1 .. v9}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1397
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Password can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    .line 1402
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 14
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I
    .param p7, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1304
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Pattern can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1306
    :cond_0
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    .line 1309
    .local v12, "shouldReEnrollBaseZero":Z
    :goto_0
    if-eqz v12, :cond_3

    .line 1310
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1317
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_1
    new-instance v10, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p6

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v11, p7

    .line 1315
    invoke-direct/range {v3 .. v11}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1338
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz v12, :cond_1

    .line 1340
    move/from16 v0, p6

    invoke-direct {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1343
    :cond_1
    return-object v2

    .line 1306
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v12    # "shouldReEnrollBaseZero":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1312
    .restart local v12    # "shouldReEnrollBaseZero":Z
    :cond_3
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_1
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Pattern can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p5}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    .local v2, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    .line 1295
    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1145
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1146
    if-nez p2, :cond_0

    .line 1147
    const/4 v0, 0x0

    .line 1149
    :goto_0
    if-nez p3, :cond_1

    .line 1150
    const/4 v3, 0x0

    .line 1152
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    invoke-interface {v4, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 1155
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 1156
    return-object v5

    .line 1148
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "enrolledCredentialBytes":[B
    goto :goto_0

    .line 1151
    .end local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "toEnrollBytes":[B
    goto :goto_1

    .line 1159
    .end local v3    # "toEnrollBytes":[B
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1160
    .local v1, "hash":[B
    if-eqz v1, :cond_3

    .line 1161
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1166
    :goto_2
    return-object v1

    .line 1164
    :cond_3
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private fixateNewestUserKeyAuth(I)V
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1219
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1220
    .local v2, "mountService":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1222
    .local v0, "callingId":J
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->fixateNewestUserKeyAuth(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1218
    return-void

    .line 1223
    :catchall_0
    move-exception v3

    .line 1224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1223
    throw v3
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 872
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 873
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 888
    const/4 v1, 0x0

    .line 893
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 894
    const-string/jumbo v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_0
    return-object v1

    .line 875
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 876
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    .line 877
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 878
    .end local v1    # "currentHandle":[B
    :cond_1
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 881
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 882
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    .line 883
    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 884
    .end local v1    # "currentHandle":[B
    :cond_2
    const/4 v1, 0x0

    .local v1, "currentHandle":[B
    goto :goto_0

    .line 873
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 782
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v7, p1}, Lcom/android/server/LockSettingsStorage;->readChildProfileLock(I)[B

    move-result-object v6

    .line 783
    .local v6, "storedData":[B
    if-nez v6, :cond_0

    .line 784
    new-instance v7, Ljava/io/FileNotFoundException;

    const-string/jumbo v8, "Child profile lock file not found"

    invoke-direct {v7, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 786
    :cond_0
    const/4 v7, 0x0

    invoke-static {v6, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 788
    .local v4, "iv":[B
    array-length v7, v6

    .line 787
    invoke-static {v6, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 790
    .local v3, "encryptedPassword":[B
    const-string/jumbo v7, "AndroidKeyStore"

    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 791
    .local v5, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v5, v9}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 793
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profile_key_name_decrypt_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 792
    invoke-virtual {v5, v7, v9}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    .line 795
    .local v1, "decryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v7, "AES/GCM/NoPadding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 798
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v8, 0x80

    invoke-direct {v7, v8, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v1, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 799
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 800
    .local v2, "decryptionResult":[B
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v7
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 1750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_0

    .line 1751
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1755
    :cond_0
    :try_start_1
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1756
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1757
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1758
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 1759
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1762
    :cond_1
    :try_start_2
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1763
    return-object v3

    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1733
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1734
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 1735
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 1737
    :cond_0
    return-object v2
.end method

.method private isManagedProfileWithSeparatedLock(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isManagedProfileWithUnifiedLock(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 930
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return v0

    .line 931
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private maybeShowEncryptionNotifications()V
    .locals 8

    .prologue
    .line 304
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 305
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 306
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 307
    .local v3, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 308
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    .line 309
    .local v1, "isSecure":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 305
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "isSecure":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 310
    .restart local v1    # "isSecure":Z
    :cond_2
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 316
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 317
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v6

    .line 316
    if-eqz v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 321
    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    goto :goto_2

    .line 303
    .end local v1    # "isSecure":Z
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    return-void
.end method

.method private migrateOldData()V
    .locals 38

    .prologue
    .line 456
    :try_start_0
    const-string/jumbo v33, "migrated"

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_2

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 458
    .local v9, "cr":Landroid/content/ContentResolver;
    sget-object v34, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v35, v0

    :goto_0
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    aget-object v31, v34, v33

    .line 459
    .local v31, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v31

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 460
    .local v32, "value":Ljava/lang/String;
    if-eqz v32, :cond_0

    .line 461
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    :cond_0
    add-int/lit8 v33, v33, 0x1

    goto :goto_0

    .line 465
    .end local v31    # "validSetting":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v33, "migrated"

    const-string/jumbo v34, "true"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 466
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Migrated lock settings to new location"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .end local v9    # "cr":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v33, "migrated_user_specific"

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_9

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 472
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    .line 473
    .local v30, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v26, 0x0

    .local v26, "user":I
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v26

    move/from16 v1, v33

    if-ge v0, v1, :cond_8

    .line 475
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    .line 476
    .local v28, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 477
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v33, "lock_screen_owner_info"

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 478
    .local v19, "ownerInfo":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_3

    .line 479
    const-string/jumbo v33, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 480
    const-string/jumbo v33, "lock_screen_owner_info"

    const-string/jumbo v34, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v28

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 486
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 489
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 490
    .local v17, "ivalue":I
    if-eqz v17, :cond_5

    const/4 v14, 0x1

    .line 491
    .local v14, "enabled":Z
    :goto_2
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    if-eqz v14, :cond_6

    const/16 v33, 0x1

    :goto_3
    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .end local v14    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v34

    move/from16 v2, v28

    invoke-static {v9, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 473
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 490
    .restart local v17    # "ivalue":I
    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "enabled":Z
    goto :goto_2

    .line 491
    :cond_6
    const/16 v33, 0x0

    goto :goto_3

    .line 492
    .end local v14    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_0
    move-exception v12

    .line 494
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 495
    const-string/jumbo v33, "lock_screen_owner_info_enabled"

    const-wide/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 591
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v26    # "user":I
    .end local v28    # "userId":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v22

    .line 592
    .local v22, "re":Landroid/os/RemoteException;
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Unable to migrate old data"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v22    # "re":Landroid/os/RemoteException;
    :cond_7
    return-void

    .line 501
    .restart local v9    # "cr":Landroid/content/ContentResolver;
    .restart local v26    # "user":I
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v33, "migrated_user_specific"

    const-string/jumbo v34, "true"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Migrated per-user lock settings to new location"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v9    # "cr":Landroid/content/ContentResolver;
    .end local v26    # "user":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v33, "migrated_biometric_weak"

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_c

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    .line 508
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_b

    .line 509
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v28, v0

    .line 510
    .restart local v28    # "userId":I
    const-string/jumbo v33, "lockscreen.password_type"

    .line 511
    const-wide/16 v34, 0x0

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v24

    .line 513
    .local v24, "type":J
    const-string/jumbo v33, "lockscreen.password_type_alternate"

    .line 514
    const-wide/16 v34, 0x0

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v10

    .line 516
    .local v10, "alternateType":J
    const-wide/32 v34, 0x8000

    cmp-long v33, v24, v34

    if-nez v33, :cond_a

    .line 517
    const-string/jumbo v33, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v28

    invoke-virtual {v0, v1, v10, v11, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 521
    :cond_a
    const-string/jumbo v33, "lockscreen.password_type_alternate"

    .line 522
    const-wide/16 v34, 0x0

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 508
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 525
    .end local v10    # "alternateType":J
    .end local v24    # "type":J
    .end local v28    # "userId":I
    :cond_b
    const-string/jumbo v33, "migrated_biometric_weak"

    const-string/jumbo v34, "true"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 526
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v15    # "i":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v33, "migrated_lockscreen_disabled"

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_11

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    .line 534
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v27

    .line 535
    .local v27, "userCount":I
    const/16 v23, 0x0

    .line 536
    .local v23, "switchableUsers":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    move/from16 v0, v27

    if-ge v15, v0, :cond_e

    .line 537
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 538
    add-int/lit8 v23, v23, 0x1

    .line 536
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 542
    :cond_e
    const/16 v33, 0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-le v0, v1, :cond_10

    .line 543
    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v27

    if-ge v15, v0, :cond_10

    .line 544
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v33

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 546
    .local v16, "id":I
    const-string/jumbo v33, "lockscreen.disabled"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 547
    const-string/jumbo v33, "lockscreen.disabled"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 543
    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 552
    .end local v16    # "id":I
    :cond_10
    const-string/jumbo v33, "migrated_lockscreen_disabled"

    const-string/jumbo v34, "true"

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Migrated lockscreen disabled flag"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v15    # "i":I
    .end local v23    # "switchableUsers":I
    .end local v27    # "userCount":I
    .end local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    .line 557
    .restart local v30    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v15, v0, :cond_7

    .line 558
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/UserInfo;

    .line 559
    .local v29, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v33

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move-object/from16 v33, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 566
    const-string/jumbo v33, "lockscreen.password_type"

    .line 567
    const-wide/16 v34, 0x0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v0

    .line 566
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v20

    .line 568
    .local v20, "quality":J
    const-wide/16 v34, 0x0

    cmp-long v33, v20, v34

    if-nez v33, :cond_14

    .line 570
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Migrated tied profile lock type"

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string/jumbo v33, "lockscreen.password_type"

    .line 572
    const-wide/32 v34, 0x50000

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v36, v0

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 579
    .end local v20    # "quality":J
    :cond_12
    :goto_9
    :try_start_4
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "profile_key_name_encrypt_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 581
    .local v8, "alias":Ljava/lang/String;
    const-string/jumbo v33, "AndroidKeyStore"

    invoke-static/range {v33 .. v33}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v18

    .line 582
    .local v18, "keyStore":Ljava/security/KeyStore;
    const/16 v33, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 583
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 584
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 557
    .end local v8    # "alias":Ljava/lang/String;
    .end local v18    # "keyStore":Ljava/security/KeyStore;
    :cond_13
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 573
    .restart local v20    # "quality":J
    :cond_14
    const-wide/32 v34, 0x50000

    cmp-long v33, v20, v34

    if-eqz v33, :cond_12

    .line 575
    :try_start_5
    const-string/jumbo v33, "LockSettingsService"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Invalid tied profile lock type: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 587
    .end local v20    # "quality":J
    :catch_2
    move-exception v13

    .line 588
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v33, "LockSettingsService"

    const-string/jumbo v34, "Unable to remove tied profile key"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_a
.end method

.method private notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1524
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1527
    .local v0, "quality":I
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/LockSettingsService$7;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/LockSettingsService$7;-><init>(Lcom/android/server/LockSettingsService;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1523
    return-void
.end method

.method private notifyPasswordChanged(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/LockSettingsService$-void_notifyPasswordChanged_int_userId_LambdaImpl0;-><init>(Lcom/android/server/LockSettingsService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1568
    return-void
.end method

.method private onUserLockChanged(I)V
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 901
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 902
    return-void

    .line 904
    :cond_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    .line 905
    :goto_0
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 906
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 907
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v5, :cond_5

    .line 908
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 909
    .local v3, "profile":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 910
    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    .line 911
    .local v2, "managedUserId":I
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 907
    .end local v2    # "managedUserId":I
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 904
    .end local v0    # "i":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5    # "size":I
    :cond_2
    const/4 v1, 0x1

    .local v1, "isSecure":Z
    goto :goto_0

    .line 914
    .end local v1    # "isSecure":Z
    .restart local v0    # "i":I
    .restart local v2    # "managedUserId":I
    .restart local v3    # "profile":Landroid/content/pm/UserInfo;
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "size":I
    :cond_3
    if-eqz v1, :cond_4

    .line 915
    invoke-virtual {p0, v2, v7}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    goto :goto_2

    .line 917
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 918
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 919
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 920
    invoke-direct {p0, v7, v2}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 921
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 922
    iget-object v6, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v6, v2}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 923
    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    goto :goto_2

    .line 900
    .end local v2    # "managedUserId":I
    .end local v3    # "profile":Landroid/content/pm/UserInfo;
    :cond_5
    return-void
.end method

.method private removeKeystoreProfileKey(I)V
    .locals 5
    .param p1, "targetUserId"    # I

    .prologue
    .line 1653
    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 1654
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_encrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "profile_key_name_decrypt_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1650
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to remove keystore profile key for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeUser(IZ)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "unknownUser"    # Z

    .prologue
    .line 1631
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 1632
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    .line 1634
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 1635
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 1638
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 1639
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 1640
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1646
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 1630
    :cond_2
    return-void

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static secretFromCredential(Ljava/lang/String;)[B
    .locals 5
    .param p0, "credential"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1191
    :try_start_0
    const-string/jumbo v3, "SHA-512"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1193
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v3, "Android FBE credential hash"

    .line 1194
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1193
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 1196
    .local v2, "personalization":[B
    const/16 v3, 0x80

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 1197
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1198
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 1199
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1200
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "personalization":[B
    :catch_0
    move-exception v1

    .line 1201
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 766
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 767
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    .line 765
    return-void
.end method

.method private setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 18
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1019
    if-eqz p1, :cond_1

    .line 1020
    const-string/jumbo v4, "[0-9]+"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    .line 1021
    .local v16, "isPin":Z
    if-eqz v16, :cond_0

    .line 1022
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    .line 1023
    .local v17, "stringArr":[C
    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/LockSettingsService;->pin_text_length:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "complex_password_number"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1033
    .end local v16    # "isPin":Z
    .end local v17    # "stringArr":[C
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pin_text_length"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/LockSettingsService;->pin_text_length:I

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1034
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLockPasswordInternal:pin_text_length="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/LockSettingsService;->pin_text_length:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v12

    .line 1036
    .local v12, "currentHandle":[B
    if-nez p1, :cond_2

    .line 1037
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move/from16 v0, p3

    invoke-interface {v4, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v5, 0x0

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1040
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 1041
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1042
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 1043
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1044
    return-void

    .line 1026
    .end local v12    # "currentHandle":[B
    .restart local v16    # "isPin":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pin_text_length"

    const/4 v7, 0x4

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/LockSettingsService;->pin_text_length:I

    .line 1027
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "complex_password_number"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1030
    .end local v16    # "isPin":Z
    :cond_1
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/LockSettingsService;->pin_text_length:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "complex_password_number"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1047
    .restart local v12    # "currentHandle":[B
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1050
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 1068
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v15

    .line 1069
    .local v15, "enrolledHandle":[B
    if-eqz v15, :cond_6

    .line 1071
    new-instance v6, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v4, 0x1

    invoke-direct {v6, v15, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    .line 1073
    .local v6, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1074
    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    .line 1073
    invoke-direct/range {v4 .. v11}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    .line 1072
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p3

    invoke-virtual {v4, v15, v0}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1076
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 1077
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 1018
    return-void

    .line 1056
    .end local v6    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v15    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1057
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Failed to decrypt child profile key"

    invoke-static {v4, v5, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1051
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 1052
    .local v13, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Child profile key not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1060
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    if-nez v12, :cond_3

    .line 1061
    if-eqz p2, :cond_5

    .line 1062
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Saved credential provided, but none stored"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_5
    const/16 p2, 0x0

    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_1

    .line 1079
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v15    # "enrolledHandle":[B
    :cond_6
    new-instance v4, Landroid/os/RemoteException;

    const-string/jumbo v5, "Failed to enroll password"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 954
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v8

    .line 956
    .local v8, "currentHandle":[B
    if-nez p1, :cond_0

    .line 957
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->clearUserKeyProtection(I)V

    .line 958
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 959
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v7, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 960
    invoke-direct {p0, v7, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    .line 961
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 962
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 963
    invoke-direct {p0, v7, p3}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 964
    return-void

    .line 967
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 970
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 990
    .end local p2    # "savedCredential":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0, v8, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v10

    .line 991
    .local v10, "enrolledHandle":[B
    if-eqz v10, :cond_5

    .line 993
    new-instance v2, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v2, v10, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BI)V

    .line 995
    .local v2, "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 994
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/LockSettingsService;->setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V

    .line 996
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v10, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 997
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->fixateNewestUserKeyAuth(I)V

    .line 998
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->onUserLockChanged(I)V

    .line 953
    return-void

    .line 974
    .end local v2    # "willStore":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v10    # "enrolledHandle":[B
    .restart local p2    # "savedCredential":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 975
    .local v9, "e":Ljava/lang/Exception;
    instance-of v0, v9, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_2

    .line 976
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Child profile key not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_2
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Failed to decrypt child profile key"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 982
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_3
    if-nez v8, :cond_1

    .line 983
    if-eqz p2, :cond_4

    .line 984
    const-string/jumbo v0, "LockSettingsService"

    const-string/jumbo v1, "Saved credential provided, but none stored"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_4
    const/4 p2, 0x0

    .local p2, "savedCredential":Ljava/lang/String;
    goto :goto_0

    .line 1000
    .end local p2    # "savedCredential":Ljava/lang/String;
    .restart local v10    # "enrolledHandle":[B
    :cond_5
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "Failed to enroll pattern"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 671
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string/jumbo v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method private setUserKeyProtection(ILjava/lang/String;Lcom/android/internal/widget/VerifyCredentialResponse;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "vcr"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1171
    if-nez p3, :cond_0

    .line 1172
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Null response verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1174
    :cond_0
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Non-OK response verifying a credential we just set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1176
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1178
    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .line 1179
    .local v0, "token":[B
    if-nez v0, :cond_2

    .line 1180
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "Empty payload verifying a credential we just set"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1182
    :cond_2
    invoke-static {p2}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/LockSettingsService;->addUserKeyAuth(I[B[B)V

    .line 1170
    return-void
.end method

.method private showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "detail"    # Ljava/lang/CharSequence;
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 354
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 356
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 357
    const v2, 0x108046b

    .line 356
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 358
    const-wide/16 v2, 0x0

    .line 356
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 362
    const/4 v2, 0x2

    .line 356
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 364
    const v3, 0x106005a

    .line 363
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 356
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 371
    .local v0, "notification":Landroid/app/Notification;
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4, v0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 350
    return-void
.end method

.method private showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V
    .locals 10
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v9, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 331
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x1040604

    .line 330
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 333
    .local v2, "title":Ljava/lang/CharSequence;
    const v0, 0x1040608

    .line 332
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 335
    .local v3, "message":Ljava/lang/CharSequence;
    const v0, 0x1040607

    .line 334
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 337
    .local v4, "detail":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 338
    .local v6, "km":Landroid/app/KeyguardManager;
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v6, v9, v9, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v8

    .line 339
    .local v8, "unlockIntent":Landroid/content/Intent;
    if-nez v8, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    const/high16 v0, 0x10800000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 344
    const/high16 v9, 0x8000000

    .line 343
    invoke-static {v0, v1, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, "intent":Landroid/app/PendingIntent;
    move-object v0, p0

    move-object v1, p1

    .line 346
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService;->showEncryptionNotification(Landroid/os/UserHandle;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 328
    return-void
.end method

.method private tieProfileLockToParent(ILjava/lang/String;)V
    .locals 18
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1085
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 1089
    .local v10, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v12, "AES"

    invoke-static {v12}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v6

    .line 1090
    .local v6, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v12, Ljava/security/SecureRandom;

    invoke-direct {v12}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v12}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 1091
    invoke-virtual {v6}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v11

    .line 1092
    .local v11, "secretKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AndroidKeyStore"

    invoke-static {v12}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 1093
    .local v7, "keyStore":Ljava/security/KeyStore;
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1096
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1097
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 1098
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 1099
    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1098
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 1100
    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1098
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    .line 1095
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1103
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_decrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1104
    new-instance v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v13, v11}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 1105
    new-instance v14, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 1106
    const-string/jumbo v16, "GCM"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1105
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 1107
    const-string/jumbo v16, "NoPadding"

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1105
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    .line 1108
    const/4 v15, 0x1

    .line 1105
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    .line 1109
    const/16 v15, 0x1e

    .line 1105
    invoke-virtual {v14, v15}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v14

    .line 1102
    invoke-virtual {v7, v12, v13, v14}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1113
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    .line 1112
    invoke-virtual {v7, v12, v13}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v8

    check-cast v8, Ljavax/crypto/SecretKey;

    .line 1115
    .local v8, "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v12, "AES/GCM/NoPadding"

    .line 1114
    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1117
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v12, 0x1

    invoke-virtual {v1, v12, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1118
    invoke-virtual {v1, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 1119
    .local v4, "encryptionResult":[B
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 1122
    .local v5, "iv":[B
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "profile_key_name_encrypt_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1129
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1131
    .local v9, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    array-length v12, v5

    const/16 v13, 0xc

    if-eq v12, v13, :cond_0

    .line 1132
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Invalid iv length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1136
    :catch_0
    move-exception v2

    .line 1137
    .local v2, "e":Ljava/io/IOException;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to concatenate byte arrays"

    invoke-direct {v12, v13, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 1120
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "encryptionResult":[B
    .end local v5    # "iv":[B
    .end local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .end local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v12

    .line 1122
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "profile_key_name_encrypt_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 1120
    throw v12
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1126
    .end local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v7    # "keyStore":Ljava/security/KeyStore;
    .end local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :catch_1
    move-exception v3

    .line 1127
    .local v3, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Failed to encrypt key"

    invoke-direct {v12, v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 1134
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "encryptionResult":[B
    .restart local v5    # "iv":[B
    .restart local v6    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .restart local v7    # "keyStore":Ljava/security/KeyStore;
    .restart local v8    # "keyStoreEncryptionKey":Ljavax/crypto/SecretKey;
    .restart local v9    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_0
    :try_start_5
    invoke-virtual {v9, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1135
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1139
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/android/server/LockSettingsStorage;->writeChildProfileLock(I[B)V

    .line 1083
    return-void
.end method

.method private unlockChildProfile(I)V
    .locals 8
    .param p1, "profileHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 805
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    .line 806
    const-wide/16 v4, 0x0

    .line 805
    const/4 v3, 0x0

    .line 806
    const/4 v7, 0x0

    move-object v1, p0

    move v6, p1

    .line 805
    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    .line 812
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Child profile key not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 814
    :cond_0
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failed to decrypt child profile key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 772
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 773
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    .line 770
    return-void
.end method

.method private unlockUser(I[B[B)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "token"    # [B
    .param p3, "secret"    # [B

    .prologue
    .line 821
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v2, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 822
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v3, p0, v2}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V

    .line 841
    .local v3, "listener":Landroid/os/IProgressListener;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7, p1, p2, p3, v3}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 847
    const-wide/16 v8, 0xf

    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 852
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 853
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    .line 854
    .local v6, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 856
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 857
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 858
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v8, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v7

    .line 856
    if-eqz v7, :cond_0

    .line 859
    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->unlockChildProfile(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 863
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "pi$iterator":Ljava/util/Iterator;
    .end local v6    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "LockSettingsService"

    const-string/jumbo v8, "Failed to unlock child profile"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 819
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    return-void

    .line 842
    :catch_1
    move-exception v0

    .line 843
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 848
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v1

    .line 849
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 19
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .param p8, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1436
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1438
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 1441
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1442
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 1445
    :cond_2
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_4

    .line 1446
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v12

    .line 1447
    .local v12, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v12, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1448
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1452
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user with fake token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 1454
    .local v10, "fakeToken":[B
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    .line 1457
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1458
    if-nez p4, :cond_4

    .line 1459
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1460
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 1466
    .end local v10    # "fakeToken":[B
    :cond_3
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v4

    .line 1471
    .end local v12    # "hash":[B
    :cond_4
    const/4 v15, 0x0

    .line 1472
    .local v15, "shouldReEnroll":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    .line 1473
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    .line 1472
    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v11

    .line 1474
    .local v11, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v14

    .line 1475
    .local v14, "responseCode":I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_8

    .line 1476
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-direct {v13, v4}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 1491
    .end local v15    # "shouldReEnroll":Z
    .local v13, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_b

    .line 1496
    if-eqz p8, :cond_5

    .line 1497
    invoke-interface/range {p8 .. p8}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V

    .line 1499
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V

    .line 1500
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1502
    const-string/jumbo v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unlocking user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1503
    const-string/jumbo v6, " with token length "

    .line 1502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1503
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v6

    array-length v6, v6

    .line 1502
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/server/LockSettingsService;->secretFromCredential(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/LockSettingsService;->unlockUser(I[B[B)V

    .line 1506
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithSeparatedLock(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1508
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "trust"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/trust/TrustManager;

    .line 1509
    .local v17, "trustManager":Landroid/app/trust/TrustManager;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 1511
    .end local v17    # "trustManager":Landroid/app/trust/TrustManager;
    :cond_6
    if-eqz v15, :cond_7

    .line 1512
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1520
    :cond_7
    :goto_1
    return-object v13

    .line 1477
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v15    # "shouldReEnroll":Z
    :cond_8
    if-nez v14, :cond_a

    .line 1478
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v16

    .line 1479
    .local v16, "token":[B
    if-nez v16, :cond_9

    .line 1481
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 1484
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_9
    invoke-virtual {v11}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v15

    .line 1485
    .local v15, "shouldReEnroll":Z
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 1488
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v16    # "token":[B
    .local v15, "shouldReEnroll":Z
    :cond_a
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto/16 :goto_0

    .line 1514
    .end local v15    # "shouldReEnroll":Z
    :cond_b
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1515
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_7

    .line 1516
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_1
.end method


# virtual methods
.method synthetic -com_android_server_LockSettingsService_lambda$1(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1572
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1571
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1573
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportPasswordChanged(I)V

    .line 0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1349
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1350
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1351
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1352
    :cond_0
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "progressCallback"    # Lcom/android/internal/widget/ICheckCredentialProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1275
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1276
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1277
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-object v0
.end method

.method public checkVoldPassword(I)Z
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1579
    iget-boolean v5, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v5, :cond_0

    .line 1580
    return v6

    .line 1582
    :cond_0
    iput-boolean v6, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 1584
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1594
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 1596
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1598
    .local v2, "identity":J
    :try_start_0
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 1599
    .local v1, "password":Ljava/lang/String;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->clearPassword()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1601
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1603
    if-nez v1, :cond_1

    .line 1604
    return v6

    .line 1600
    .end local v1    # "password":Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1601
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    throw v5

    .line 1608
    .restart local v1    # "password":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1609
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 1611
    return v7

    .line 1614
    :catch_0
    move-exception v0

    .line 1618
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1619
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p1, v5}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_3

    .line 1621
    return v7

    .line 1624
    :catch_1
    move-exception v0

    .line 1627
    :cond_3
    return v6
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 679
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .line 681
    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 687
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->checkCryptKeeperPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 759
    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    .line 760
    const-string/jumbo v2, "no crypt_keeper or admin permission to get the password"

    .line 758
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_0
    sget-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSeparateProfileChallengeEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 631
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 632
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 694
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 698
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 701
    return-object v2

    :cond_0
    :try_start_1
    const-string/jumbo v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v2

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    throw v2

    .line 707
    .end local v0    # "ident":J
    :cond_1
    const-string/jumbo v2, "legacy_lock_pattern_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 708
    const-string/jumbo p1, "lock_pattern_autolock"

    .line 711
    :cond_2
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1690
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1691
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    return v0
.end method

.method public hideEncryptionNotification(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 374
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 380
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 379
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 385
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5}, Lcom/android/server/LockSettingsService;->hideEncryptionNotification(Landroid/os/UserHandle;)V

    .line 387
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 390
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v6, p0, p1}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 400
    :cond_0
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 401
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 402
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 404
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    .line 405
    .local v1, "isSecure":Z
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 406
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 407
    .local v4, "userHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 408
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 401
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "isSecure":Z
    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 409
    .restart local v1    # "isSecure":Z
    .restart local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->showEncryptionNotificationForProfile(Landroid/os/UserHandle;)V

    goto :goto_2

    .line 383
    .end local v1    # "isSecure":Z
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_4
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 1666
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1665
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1678
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1679
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 1677
    return-void
.end method

.method public resetKeyStore(I)V
    .locals 17
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1230
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1232
    const/4 v3, -0x1

    .line 1233
    .local v3, "managedUserId":I
    const/4 v2, 0x0

    .line 1234
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 1235
    .local v7, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    .local v5, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1237
    .local v4, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1238
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1239
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget v10, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v9

    .line 1237
    if-eqz v9, :cond_0

    .line 1241
    const/4 v9, -0x1

    if-ne v3, v9, :cond_1

    .line 1242
    :try_start_0
    iget v9, v4, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "managedUserDecryptedPassword":Ljava/lang/String;
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    .line 1246
    .end local v2    # "managedUserDecryptedPassword":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "More than one managed profile, uid1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1247
    const-string/jumbo v11, ", uid2:"

    .line 1246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1247
    iget v11, v4, Landroid/content/pm/UserInfo;->id:I

    .line 1246
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v1

    .line 1253
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "LockSettingsService"

    const-string/jumbo v10, "Failed to decrypt child profile key"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1259
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "pi":Landroid/content/pm/UserInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_4

    aget v6, v11, v10

    .line 1260
    .local v6, "profileId":I
    sget-object v13, Lcom/android/server/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    const/4 v9, 0x0

    array-length v14, v13

    :goto_2
    if-ge v9, v14, :cond_3

    aget v8, v13, v9

    .line 1261
    .local v8, "uid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LockSettingsService;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v6, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/security/KeyStore;->clearUid(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1259
    .end local v8    # "uid":I
    :cond_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 1265
    .end local v6    # "profileId":I
    :cond_4
    const/4 v9, -0x1

    if-eq v3, v9, :cond_5

    if-eqz v2, :cond_5

    .line 1267
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    .line 1229
    :cond_5
    return-void

    .line 1264
    :catchall_0
    move-exception v9

    .line 1265
    const/4 v10, -0x1

    if-eq v3, v10, :cond_6

    if-eqz v2, :cond_6

    .line 1267
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V

    .line 1264
    :cond_6
    throw v9
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    if-eqz p1, :cond_1

    .line 729
    sput-object p1, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 1

    .prologue
    .line 736
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 735
    :cond_0
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 654
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    return-void

    .line 654
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1009
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1010
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1011
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 1013
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1008
    return-void

    .line 1010
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 944
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 945
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 946
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setLockPatternInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 947
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v2}, Lcom/android/server/LockSettingsService;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 948
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->notifyPasswordChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 943
    return-void

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 660
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 658
    return-void
.end method

.method public setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z
    .param p3, "managedUserPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 640
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 641
    :try_start_0
    const-string/jumbo v0, "lockscreen.profilechallenge"

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 642
    if-eqz p2, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->removeChildProfileLock(I)V

    .line 644
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeKeystoreProfileKey(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 638
    return-void

    .line 646
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 666
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 664
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 444
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 441
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockSettingsService"

    const-string/jumbo v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public tieManagedProfileLockIfNecessary(ILjava/lang/String;)V
    .locals 8
    .param p1, "managedUserId"    # I
    .param p2, "managedUserPassword"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    return-void

    .line 238
    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, p1}, Lcom/android/server/LockSettingsStorage;->hasChildProfileLock(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 239
    return-void

    .line 242
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v2, v4, Landroid/content/pm/UserInfo;->id:I

    .line 243
    .local v2, "parentId":I
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v4, v2}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 248
    :cond_3
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 250
    .local v3, "randomLockSeed":[B
    :try_start_0
    const-string/jumbo v4, "SHA1PRNG"

    invoke-static {v4}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    .line 251
    invoke-static {v3}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "newPassword":Ljava/lang/String;
    invoke-direct {p0, v1, p2, p1}, Lcom/android/server/LockSettingsService;->setLockPasswordInternal(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    const-string/jumbo v4, "lockscreen.password_type"

    .line 257
    const-wide/32 v6, 0x50000

    .line 256
    invoke-virtual {p0, v4, v6, v7, p1}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 258
    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsService;->tieProfileLockToParent(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1    # "newPassword":Ljava/lang/String;
    :goto_0
    return-void

    .line 245
    .end local v3    # "randomLockSeed":[B
    :cond_4
    return-void

    .line 259
    .restart local v3    # "randomLockSeed":[B
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "LockSettingsService"

    const-string/jumbo v5, "Fail to tie managed profile"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 1672
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1673
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 1671
    return-void
.end method

.method public userPresent(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1684
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->reportUnlock(I)V

    .line 1683
    return-void
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1358
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1284
    const/4 v3, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyTiedProfileChallenge(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "isPattern"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1364
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1365
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->isManagedProfileWithUnifiedLock(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1366
    new-instance v3, Landroid/os/RemoteException;

    const-string/jumbo v4, "User id must be managed profile with unified lock"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1368
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v8, v3, Landroid/content/pm/UserInfo;->id:I

    .line 1370
    .local v8, "parentProfileId":I
    if-eqz p2, :cond_1

    .line 1371
    const/4 v5, 0x1

    .line 1372
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    .line 1371
    invoke-direct/range {v3 .. v9}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    .line 1375
    .local v16, "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1377
    return-object v16

    .line 1373
    .end local v16    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const/4 v5, 0x1

    .line 1374
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    .line 1373
    invoke-direct/range {v3 .. v9}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v16

    goto :goto_0

    .line 1382
    .restart local v16    # "parentResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    .line 1384
    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v12, p3

    move/from16 v14, p5

    .line 1382
    invoke-direct/range {v9 .. v15}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1388
    :catch_0
    move-exception v2

    .line 1389
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "LockSettingsService"

    const-string/jumbo v4, "Failed to decrypt child profile key"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    new-instance v3, Landroid/os/RemoteException;

    const-string/jumbo v4, "Unable to get tied profile token"

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
