.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;,
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    .line 684
    const/4 v11, 0x0

    .line 685
    .local v11, "numCameras":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v2

    .line 686
    .local v2, "cameraService":Landroid/hardware/ICameraService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v3, "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 690
    return-object v3

    .line 694
    :cond_0
    const/16 v18, 0x1

    :try_start_0
    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/hardware/ICameraService;->getNumberOfCameras(I)I

    move-result v11

    .line 698
    const/4 v7, 0x0

    .line 699
    .local v7, "exposeAuxCamera":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v13

    .line 700
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v18, "camera.aux.packagelist"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 701
    .local v12, "packageList":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_2

    .line 702
    new-instance v14, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v18, 0x2c

    move/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 703
    .local v14, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v14, v12}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 704
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "str$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 705
    .local v16, "str":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 706
    const/4 v7, 0x1

    .line 712
    .end local v14    # "splitter":Landroid/text/TextUtils$StringSplitter;
    .end local v16    # "str":Ljava/lang/String;
    .end local v17    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->ProductSupportForAuxCamera()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 714
    const-string/jumbo v18, "com.android.camera"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "com.zeusis.factorytest"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 724
    :cond_3
    :goto_0
    const-string/jumbo v18, "android.camera.cts"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 725
    const-string/jumbo v18, "Coolpad COR-I0"

    const-string/jumbo v19, "ro.product.model"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v18, "clover"

    const-string/jumbo v19, "ro.product.model"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 726
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    .line 727
    .local v15, "stackTraces":[Ljava/lang/StackTraceElement;
    const/16 v18, 0x0

    array-length v0, v15

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    aget-object v6, v15, v18

    .line 731
    .local v6, "element":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "android.hardware.camera2.cts.testcases.Camera2MultiViewTestCase.setUp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 732
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "android.hardware.camera2.cts.CameraManagerTest.testCameraManagerOpenAllCameras"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    .line 731
    if-eqz v20, :cond_9

    .line 733
    :cond_5
    const-string/jumbo v18, "CameraManager"

    const-string/jumbo v19, "william: front camera1(S5K5E8) and rear camera0(S5K3L8) can not be opened at the same time,because they used the same MIPI CSI0."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    const/4 v11, 0x1

    .line 748
    .end local v6    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "exposeAuxCamera":Z
    .end local v12    # "packageList":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "stackTraces":[Ljava/lang/StackTraceElement;
    :cond_6
    :goto_2
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v11, :cond_d

    .line 751
    const/4 v10, 0x0

    .line 753
    .local v10, "isDeviceSupported":Z
    :try_start_1
    invoke-interface {v2, v8}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    .line 754
    .local v9, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v18

    if-nez v18, :cond_a

    .line 755
    const/4 v10, 0x1

    .line 774
    .end local v9    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_7
    :goto_4
    if-eqz v10, :cond_c

    .line 775
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 716
    .end local v8    # "i":I
    .end local v10    # "isDeviceSupported":Z
    .restart local v7    # "exposeAuxCamera":Z
    .restart local v12    # "packageList":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_8
    if-nez v7, :cond_3

    const/16 v18, 0x2

    move/from16 v0, v18

    if-le v11, v0, :cond_3

    .line 717
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 727
    .restart local v6    # "element":Ljava/lang/StackTraceElement;
    .restart local v15    # "stackTraces":[Ljava/lang/StackTraceElement;
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 743
    .end local v6    # "element":Ljava/lang/StackTraceElement;
    .end local v7    # "exposeAuxCamera":Z
    .end local v12    # "packageList":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "stackTraces":[Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v4

    .line 745
    .local v4, "e":Landroid/os/RemoteException;
    return-object v3

    .line 741
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 742
    .local v5, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 757
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    .restart local v8    # "i":I
    .restart local v9    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v10    # "isDeviceSupported":Z
    :cond_a
    :try_start_2
    new-instance v18, Ljava/lang/AssertionError;

    const-string/jumbo v19, "Expected to get non-empty characteristics"

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 759
    .end local v9    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :catch_2
    move-exception v5

    .line 764
    .restart local v5    # "e":Landroid/os/ServiceSpecificException;
    iget v0, v5, Landroid/os/ServiceSpecificException;->errorCode:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 765
    iget v0, v5, Landroid/os/ServiceSpecificException;->errorCode:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 766
    :cond_b
    invoke-static {v5}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 768
    .end local v5    # "e":Landroid/os/ServiceSpecificException;
    :catch_3
    move-exception v4

    .line 770
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 771
    return-object v3

    .line 777
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_c
    const-string/jumbo v18, "CameraManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error querying camera device "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " for listing."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 781
    .end local v10    # "isDeviceSupported":Z
    :cond_d
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    .line 783
    .end local v2    # "cameraService":Landroid/hardware/ICameraService;
    .end local v3    # "deviceIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v11    # "numCameras":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    return-object v18
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 294
    .local v6, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v7, 0x0

    .line 296
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 298
    const/4 v5, 0x0

    .line 301
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :try_start_0
    new-instance v8, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v8, v0, v1, v2, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 307
    .local v8, "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    invoke-virtual {v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 311
    .local v3, "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 318
    .local v12, "id":I
    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 320
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v14

    invoke-virtual {v14}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v4

    .line 321
    .local v4, "cameraService":Landroid/hardware/ICameraService;
    if-nez v4, :cond_0

    .line 322
    new-instance v14, Landroid/os/ServiceSpecificException;

    .line 324
    const-string/jumbo v16, "Camera service is currently unavailable"

    .line 323
    const/16 v17, 0x4

    .line 322
    move/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v10

    .line 334
    .local v10, "e":Landroid/os/ServiceSpecificException;
    :try_start_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    .line 335
    new-instance v14, Ljava/lang/AssertionError;

    const-string/jumbo v16, "Should\'ve gone down the shim path"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 296
    .end local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .end local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .end local v10    # "e":Landroid/os/ServiceSpecificException;
    .end local v12    # "id":I
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    .line 312
    .restart local v3    # "callbacks":Landroid/hardware/camera2/ICameraDeviceCallbacks;
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .restart local v8    # "deviceImpl":Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :catch_1
    move-exception v11

    .line 313
    .local v11, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Expected cameraId to be numeric, but it was: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "cameraService":Landroid/hardware/ICameraService;
    .restart local v12    # "id":I
    :cond_0
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    .line 326
    move/from16 v0, p4

    invoke-interface {v4, v3, v12, v14, v0}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    .line 370
    .end local v4    # "cameraService":Landroid/hardware/ICameraService;
    .end local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :cond_1
    :goto_0
    :try_start_6
    invoke-virtual {v8, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 371
    move-object v7, v8

    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    monitor-exit v15

    .line 374
    return-object v8

    .line 330
    .restart local v5    # "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    .local v7, "device":Landroid/hardware/camera2/CameraDevice;
    :cond_2
    :try_start_7
    const-string/jumbo v14, "CameraManager"

    const-string/jumbo v16, "Using legacy camera HAL."

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {v3, v12}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;I)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;
    :try_end_7
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    goto :goto_0

    .line 356
    .local v5, "cameraUser":Landroid/hardware/camera2/ICameraDeviceUser;
    :catch_2
    move-exception v9

    .line 358
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_8
    new-instance v13, Landroid/os/ServiceSpecificException;

    .line 360
    const-string/jumbo v14, "Camera service is currently unavailable"

    .line 359
    const/16 v16, 0x4

    .line 358
    move/from16 v0, v16

    invoke-direct {v13, v0, v14}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 361
    .local v13, "sse":Landroid/os/ServiceSpecificException;
    invoke-virtual {v8, v13}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 362
    invoke-static {v13}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 336
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "sse":Landroid/os/ServiceSpecificException;
    .restart local v10    # "e":Landroid/os/ServiceSpecificException;
    :cond_3
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 337
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v14, v0, :cond_6

    .line 344
    :cond_4
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    .line 346
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 347
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    .line 350
    :cond_5
    :goto_1
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 338
    :cond_6
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 339
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 340
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v16, 0xa

    move/from16 v0, v16

    if-eq v14, v0, :cond_4

    .line 354
    invoke-static {v10}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 348
    :cond_7
    iget v14, v10, Landroid/os/ServiceSpecificException;->errorCode:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    goto :goto_1
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 793
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "apiVersion"    # I

    .prologue
    const/4 v4, 0x0

    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 815
    .local v2, "id":I
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 817
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_0

    return v4

    .line 819
    :cond_0
    invoke-interface {v0, v2, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 820
    .end local v0    # "cameraService":Landroid/hardware/ICameraService;
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 6
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 634
    instance-of v3, p0, Landroid/os/ServiceSpecificException;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 635
    check-cast v0, Landroid/os/ServiceSpecificException;

    .line 636
    .local v0, "e":Landroid/os/ServiceSpecificException;
    const/4 v2, 0x3

    .line 637
    .local v2, "reason":I
    iget v3, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v3, :pswitch_data_0

    .line 661
    :pswitch_0
    const/4 v2, 0x3

    .line 663
    :goto_0
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 639
    :pswitch_1
    const/4 v2, 0x2

    .line 640
    goto :goto_0

    .line 642
    :pswitch_2
    const/4 v2, 0x1

    .line 643
    goto :goto_0

    .line 645
    :pswitch_3
    const/4 v2, 0x4

    .line 646
    goto :goto_0

    .line 648
    :pswitch_4
    const/4 v2, 0x5

    .line 649
    goto :goto_0

    .line 651
    :pswitch_5
    const/16 v2, 0x3e8

    .line 652
    goto :goto_0

    .line 655
    :pswitch_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 657
    :pswitch_7
    new-instance v3, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 664
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "reason":I
    :cond_0
    instance-of v3, p0, Landroid/os/DeadObjectException;

    if-eqz v3, :cond_1

    .line 665
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    .line 666
    const-string/jumbo v4, "Camera service has died unexpectedly"

    .line 665
    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 668
    :cond_1
    instance-of v3, p0, Landroid/os/RemoteException;

    if-eqz v3, :cond_2

    .line 669
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v3, v4, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 671
    :cond_2
    instance-of v3, p0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    move-object v1, p0

    .line 672
    check-cast v1, Ljava/lang/RuntimeException;

    .line 673
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 633
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    return-void

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 14
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 223
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    iget-object v10, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 224
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 225
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "Camera id %s does not match any currently connected camera device"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 226
    const/4 v13, 0x0

    aput-object p1, v12, v13

    .line 225
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 229
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 236
    .local v5, "id":I
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    .line 237
    .local v0, "cameraService":Landroid/hardware/ICameraService;
    if-nez v0, :cond_1

    .line 238
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 239
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 238
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 245
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v8

    .line 247
    .local v8, "parameters":Ljava/lang/String;
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v6

    .line 249
    .local v6, "info":Landroid/hardware/CameraInfo;
    invoke-static {v8, v6}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .end local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "info":Landroid/hardware/CameraInfo;
    .end local v8    # "parameters":Ljava/lang/String;
    :goto_0
    monitor-exit v10

    .line 264
    return-object v1

    .line 252
    .restart local v1    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_2
    :try_start_3
    invoke-interface {v0, v5}, Landroid/hardware/ICameraService;->getCameraCharacteristics(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    .line 254
    .local v7, "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    new-instance v2, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v2, v7}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v2, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v1, v2

    .end local v2    # "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    goto :goto_0

    .line 258
    .end local v7    # "info":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v3

    .line 260
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v9, Landroid/hardware/camera2/CameraAccessException;

    .line 261
    const-string/jumbo v11, "Camera service is currently unavailable"

    .line 260
    const/4 v12, 0x2

    invoke-direct {v9, v12, v11, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 256
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 257
    .local v4, "e":Landroid/os/ServiceSpecificException;
    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getOrCreateDeviceIdListLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V

    .line 442
    return-void
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "clientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 467
    if-nez p1, :cond_0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    if-nez p2, :cond_1

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_1
    if-nez p3, :cond_2

    .line 472
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 473
    new-instance p3, Landroid/os/Handler;

    .end local p3    # "handler":Landroid/os/Handler;
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 480
    .restart local p3    # "handler":Landroid/os/Handler;
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;I)Landroid/hardware/camera2/CameraDevice;

    .line 465
    return-void

    .line 475
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 476
    const-string/jumbo v1, "Handler argument is null, but no looper exists in the calling thread"

    .line 475
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 134
    if-nez p2, :cond_1

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 136
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 138
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 137
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 133
    return-void
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 181
    if-nez p2, :cond_1

    .line 182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 183
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 185
    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    .line 184
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    .end local v0    # "looper":Landroid/os/Looper;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 180
    return-void
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    .line 523
    return-void
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .prologue
    .line 155
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 154
    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/camera2/CameraManager$TorchCallback;

    .prologue
    .line 201
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    .line 200
    return-void
.end method
