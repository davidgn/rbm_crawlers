.class public final Lcom/google/android/gms/internal/ads/zzgii;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgph;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgge;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgph;Lcom/google/android/gms/internal/ads/zzgge;Lcom/google/android/gms/internal/ads/zzgcf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgii;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzb:Lcom/google/android/gms/internal/ads/zzgph;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzc:Lcom/google/android/gms/internal/ads/zzgge;

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgcf;->zzd()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(ZJ)Ljava/lang/String;
    .locals 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzb:Lcom/google/android/gms/internal/ads/zzgph;

    const/16 v0, 0x37

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgph;->zza(I)Lcom/google/android/gms/internal/ads/zzgpf;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpf;->zza()V

    const-string v0, "0.856415045"

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayi;->zza()Lcom/google/android/gms/internal/ads/zzayh;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzayh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayh;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzayh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgii;->zza:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzayh;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayh;->zzc(J)Lcom/google/android/gms/internal/ads/zzayh;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzayh;->zzf(J)Lcom/google/android/gms/internal/ads/zzayh;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p2, p2

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzayh;->zze(J)Lcom/google/android/gms/internal/ads/zzayh;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    const-wide/16 p2, -0x1

    :try_start_2
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzayh;->zze(J)Lcom/google/android/gms/internal/ads/zzayh;

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgii;->zzc:Lcom/google/android/gms/internal/ads/zzgge;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgge;->zzc()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgge;->zza()V

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzayi;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgge;->zzf([BLjava/lang/String;)Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzayo;->zzc(I)Lcom/google/android/gms/internal/ads/zzayo;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzayo;->zzd(I)Lcom/google/android/gms/internal/ads/zzayo;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzayp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzgda;->zza([BZ)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpf;->zzb(Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p2

    goto :goto_4

    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpf;->zzb(Ljava/lang/Throwable;)V

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    return-object p2

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpf;->zzc()V

    throw p2
.end method
