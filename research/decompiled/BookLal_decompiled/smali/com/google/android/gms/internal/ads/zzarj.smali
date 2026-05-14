.class final Lcom/google/android/gms/internal/ads/zzarj;
.super Lcom/google/android/gms/internal/ads/zzarh;
.source "SourceFile"


# instance fields
.field private zza:I

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/internal/ads/zzbdo;

.field private zze:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzarh;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzb:Landroid/content/Context;

    sget v0, LI/b;->a:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "UpsideDownCake"

    invoke-static {v1, v0}, LI/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, LM/v0;->C()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    invoke-static {}, LN/c;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/api/a;->p()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a;->n(Ljava/lang/Object;)Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/a;->b(Landroid/app/sdksandbox/sdkprovider/SdkSandboxController;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzd:Lcom/google/android/gms/internal/ads/zzbdo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zze:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzark;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarj;->zza()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "InstallReferrerClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    const-string v0, "Client is already in the process of connecting to the service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, "Client was already closed and can\'t be reused. Please create another instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :cond_2
    const-string v0, "Starting install referrer service setup."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zza(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    const-string v6, "com.android.vending"

    invoke-direct {v3, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzb:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x2

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_5

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v3, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const v5, 0x4d17ab4

    if-lt v3, v5, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzari;

    const/4 v5, 0x0

    invoke-direct {v0, p0, p1, v5}, Lcom/google/android/gms/internal/ads/zzari;-><init>(Lcom/google/android/gms/internal/ads/zzarj;Lcom/google/android/gms/internal/ads/zzark;[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zze:Landroid/content/ServiceConnection;

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzb:Landroid/content/Context;

    invoke-virtual {v5, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzarm;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "Connection to service is blocked."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    invoke-interface {p1, v4}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :catch_0
    const-string v0, "No permission to connect to service."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :catch_1
    :cond_4
    const-string v0, "Play Store missing or incompatible. Version 8.3.73 or later required."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void

    :cond_5
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    const-string v0, "Install Referrer service unavailable on device."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzarm;->zza(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Lcom/google/android/gms/internal/ads/zzark;->zza(I)V

    return-void
.end method

.method public final zzc()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zze:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "InstallReferrerClient"

    const-string v2, "Unbinding from service."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzarm;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzarj;->zze:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zze:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzd:Lcom/google/android/gms/internal/ads/zzbdo;

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzarl;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzarj;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzc:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzarl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzd:Lcom/google/android/gms/internal/ads/zzbdo;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdo;->zze(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzarl;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "InstallReferrerClient"

    const-string v2, "RemoteException getting install referrer information"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzarm;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service not connected. Please start a connection before using the service."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic zze(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zza:I

    return-void
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbdo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzd:Lcom/google/android/gms/internal/ads/zzbdo;

    return-void
.end method
