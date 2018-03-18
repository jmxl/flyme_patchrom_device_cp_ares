.class Lcom/android/server/am/ActivityStartInterceptor;
.super Ljava/lang/Object;
.source "ActivityStartInterceptor.java"


# instance fields
.field mAInfo:Landroid/content/pm/ActivityInfo;

.field mActivityOptions:Landroid/app/ActivityOptions;

.field private mCallingPackage:Ljava/lang/String;

.field mCallingPid:I

.field mCallingUid:I

.field mInTask:Lcom/android/server/am/TaskRecord;

.field mIntent:Landroid/content/Intent;

.field mIsPermissionActivity:Z

.field mRInfo:Landroid/content/pm/ResolveInfo;

.field mRealAInfo:Landroid/content/pm/ActivityInfo;

.field private mRealCallingPid:I

.field private mRealCallingUid:I

.field mResolvedType:Ljava/lang/String;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mZsPermissionActivities:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "com.zeusis.zsphonemanager.module.permission.android.PrivacyPromptActivity"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 89
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "com.zeusis.zsphonemanager.module.permission.android.PermissionListActivity"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mZsPermissionActivities:[Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 92
    return-void
.end method

.method private interceptQuietProfileIfNeeded()Z
    .locals 17

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const/4 v1, 0x0

    return v1

    .line 156
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 158
    const/4 v2, 0x1

    new-array v9, v2, [Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v2, v9, v6

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v10, v6

    .line 157
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 159
    const/high16 v11, 0x50000000

    const/4 v12, 0x0

    .line 156
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v16

    .line 161
    .local v16, "target":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 162
    new-instance v2, Landroid/content/IntentSender;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    .line 161
    invoke-static {v1, v2}, Lcom/android/internal/app/UnlaunchableAppActivity;->createInQuietModeDialogIntent(ILandroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 163
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 164
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 165
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v14

    .line 168
    .local v14, "parent":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v4, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 171
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    if-eqz v1, :cond_1

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    .line 173
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v13, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 174
    .local v15, "realRInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 175
    const/4 v3, 0x0

    .line 174
    invoke-virtual {v1, v13, v15, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    .line 177
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "realRInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private interceptSuspendPackageIfNeed()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 182
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    .line 184
    :cond_0
    return v6

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 187
    const-class v4, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 186
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 188
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManagerInternal;
    if-nez v0, :cond_2

    .line 189
    return v6

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 191
    invoke-virtual {v0, v4, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->createPackageSuspendedDialogIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 193
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 194
    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 195
    iput-object v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 197
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 198
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_4

    .line 199
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 203
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 205
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    if-eqz v4, :cond_3

    .line 206
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "intent"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_5

    .line 208
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 210
    .local v3, "realRInfo":Landroid/content/pm/ResolveInfo;
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v4, v1, v3, v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    .line 213
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "realRInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v4, 0x1

    return v4

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0

    .line 209
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .restart local v3    # "realRInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1
.end method

.method private interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    const/4 v1, 0x0

    return-object v1

    .line 269
    :cond_0
    move-object/from16 v0, p3

    iget-boolean v1, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 270
    const/4 v2, 0x2

    .line 269
    move/from16 v0, p5

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/UserController;->isUserRunningLocked(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const/4 v1, 0x0

    return-object v1

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v2, 0x1

    new-array v9, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p1, v9, v2

    .line 276
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v10, v2

    .line 274
    const/4 v2, 0x2

    .line 275
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 277
    const/high16 v11, 0x54000000

    const/4 v12, 0x0

    move-object/from16 v3, p4

    move/from16 v5, p5

    .line 273
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v15

    .line 278
    .local v15, "target":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 279
    const-string/jumbo v2, "keyguard"

    .line 278
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/KeyguardManager;

    .line 280
    .local v13, "km":Landroid/app/KeyguardManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p5

    invoke-virtual {v13, v1, v2, v0}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object v14

    .line 281
    .local v14, "newIntent":Landroid/content/Intent;
    if-nez v14, :cond_2

    .line 282
    const/4 v1, 0x0

    return-object v1

    .line 284
    :cond_2
    const v1, 0x10804000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 286
    const-string/jumbo v1, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string/jumbo v1, "android.intent.extra.INTENT"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v14, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 288
    return-object v14
.end method

.method private interceptWorkProfileChallengeIfNeeded()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 217
    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 218
    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    move-object v0, p0

    .line 217
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWithConfirmCredentialsIfNeeded(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 219
    .local v8, "interceptingIntent":Landroid/content/Intent;
    if-nez v8, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    iput-object v8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 223
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 224
    iget v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    iput v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 225
    iput-object v11, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TASK_ID"

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    iput-object v11, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_2

    .line 234
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 238
    .local v6, "homeActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_3

    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_3

    .line 241
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v1, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 245
    .local v9, "parent":Landroid/content/pm/UserInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v3, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 246
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    iget v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 248
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 250
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v2, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 251
    .local v10, "realRInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    invoke-virtual {v0, v7, v10, v1, v11}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    .line 255
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "realRInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/am/TaskRecord;IILandroid/app/ActivityOptions;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"    # Ljava/lang/String;
    .param p5, "inTask"    # Lcom/android/server/am/TaskRecord;
    .param p6, "callingPid"    # I
    .param p7, "callingUid"    # I
    .param p8, "activityOptions"    # Landroid/app/ActivityOptions;

    .prologue
    .line 108
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserManager:Landroid/os/UserManager;

    .line 109
    iput-object p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 110
    iput p6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPid:I

    .line 111
    iput p7, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingUid:I

    .line 112
    iput-object p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 113
    iput-object p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 114
    iput-object p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 115
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mInTask:Lcom/android/server/am/TaskRecord;

    .line 116
    iput-object p8, p0, Lcom/android/server/am/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 119
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    .line 120
    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mZsPermissionActivities:[Ljava/lang/String;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 121
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/android/server/am/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 121
    if-eqz v6, :cond_1

    .line 123
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    .line 129
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    .line 131
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptSuspendPackageIfNeed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    return-void

    .line 120
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptQuietProfileIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    return-void

    .line 141
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityStartInterceptor;->interceptWorkProfileChallengeIfNeeded()Z

    .line 143
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIsPermissionActivity:Z

    if-eqz v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 145
    .local v0, "extraIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 146
    .local v2, "realRInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 147
    const/4 v5, 0x0

    .line 146
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealAInfo:Landroid/content/pm/ActivityInfo;

    .line 107
    .end local v0    # "extraIntent":Landroid/content/Intent;
    .end local v2    # "realRInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method

.method setStates(IIIILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "realCallingPid"    # I
    .param p3, "realCallingUid"    # I
    .param p4, "startFlags"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 99
    iput p2, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingPid:I

    .line 100
    iput p3, p0, Lcom/android/server/am/ActivityStartInterceptor;->mRealCallingUid:I

    .line 101
    iput p1, p0, Lcom/android/server/am/ActivityStartInterceptor;->mUserId:I

    .line 102
    iput p4, p0, Lcom/android/server/am/ActivityStartInterceptor;->mStartFlags:I

    .line 103
    iput-object p5, p0, Lcom/android/server/am/ActivityStartInterceptor;->mCallingPackage:Ljava/lang/String;

    .line 98
    return-void
.end method
