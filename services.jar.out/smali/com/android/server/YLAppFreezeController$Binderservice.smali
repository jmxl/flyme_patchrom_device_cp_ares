.class final Lcom/android/server/YLAppFreezeController$Binderservice;
.super Landroid/os/freeze/IYLAppFreezeController$Stub;
.source "YLAppFreezeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/YLAppFreezeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Binderservice"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/YLAppFreezeController;


# direct methods
.method private constructor <init>(Lcom/android/server/YLAppFreezeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {p0}, Landroid/os/freeze/IYLAppFreezeController$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/YLAppFreezeController;Lcom/android/server/YLAppFreezeController$Binderservice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/YLAppFreezeController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/YLAppFreezeController$Binderservice;-><init>(Lcom/android/server/YLAppFreezeController;)V

    return-void
.end method


# virtual methods
.method public addUidtoRemoteViewUnfreezeList(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 810
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-virtual {v2, p1}, Lcom/android/server/YLAppFreezeController;->addUidtoRemoteViewUnfreezeListInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    return-void

    .line 811
    :catchall_0
    move-exception v2

    .line 812
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 811
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/YLAppFreezeController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public freezeApp(ILjava/lang/String;I)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "option"    # I

    .prologue
    .line 829
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 830
    .local v0, "appId":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 831
    const-string/jumbo v1, "YLAppFreezeController"

    const-string/jumbo v4, "freezeApp return, because uid isn\'t system"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-void

    .line 834
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 836
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/YLAppFreezeController;->-wrap8(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 828
    return-void

    .line 837
    :catchall_0
    move-exception v1

    .line 838
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 837
    throw v1
.end method

.method public getFlagsOfRestriction(ILjava/lang/String;)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    iget-object v1, v0, Lcom/android/server/YLAppFreezeController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v0, p1, p2}, Lcom/android/server/YLAppFreezeController;->-wrap3(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 892
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isRemoteViewUnfreezeListContainUid(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 820
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-virtual {v2, p1}, Lcom/android/server/YLAppFreezeController;->isRemoteViewUnfreezeListContainUidInternal(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    return v2

    .line 821
    :catchall_0
    move-exception v2

    .line 822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    throw v2
.end method

.method public isSpecificScene(I)Z
    .locals 3
    .param p1, "flag"    # I

    .prologue
    .line 849
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 851
    .local v0, "ident":J
    packed-switch p1, :pswitch_data_0

    .line 861
    const/4 v2, 0x0

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 861
    return v2

    .line 854
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v2}, Lcom/android/server/YLAppFreezeController;->-wrap1(Lcom/android/server/YLAppFreezeController;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 854
    return v2

    .line 857
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v2}, Lcom/android/server/YLAppFreezeController;->-wrap0(Lcom/android/server/YLAppFreezeController;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 857
    return v2

    .line 863
    :catchall_0
    move-exception v2

    .line 864
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw v2

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 906
    new-instance v0, Lcom/android/server/YLAppFreezeController$Shell;

    iget-object v1, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-direct {v0, v1}, Lcom/android/server/YLAppFreezeController$Shell;-><init>(Lcom/android/server/YLAppFreezeController;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/YLAppFreezeController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 905
    return-void
.end method

.method public unfreezeApp(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 871
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 873
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v2, p1, p2}, Lcom/android/server/YLAppFreezeController;->-wrap14(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 870
    return-void

    .line 874
    :catchall_0
    move-exception v2

    .line 875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 874
    throw v2
.end method

.method public unfreezeAppFully(ILjava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 884
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/YLAppFreezeController$Binderservice;->this$0:Lcom/android/server/YLAppFreezeController;

    invoke-static {v2, p1, p2}, Lcom/android/server/YLAppFreezeController;->-wrap13(Lcom/android/server/YLAppFreezeController;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    return-void

    .line 885
    :catchall_0
    move-exception v2

    .line 886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    throw v2
.end method
