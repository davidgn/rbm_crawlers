.class public final Lcom/google/android/gms/internal/ads/zzgcb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/internal/ads/zzgcb;


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzgbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgcb;->zza:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgcf;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgcm;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcm;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgcm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgcm;->zzb(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/ads/zzgcm;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzgcm;->zzd(Lcom/google/android/gms/internal/ads/zzgcf;)Lcom/google/android/gms/internal/ads/zzgcm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgcc;->zza()Lcom/google/android/gms/internal/ads/zzgcd;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgcl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgcl;->zzI:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgbz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgcf;)Lcom/google/android/gms/internal/ads/zzgcb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgcb;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgcb;->zzb:Lcom/google/android/gms/internal/ads/zzgcb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgcb;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgcb;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzgcf;)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzgcb;->zzb:Lcom/google/android/gms/internal/ads/zzgcb;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzb:Lcom/google/android/gms/internal/ads/zzgcb;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zzb()LN2/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbz;->zza()LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbz;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzgbz;->zzc(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzgbz;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzf(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbz;->zze(Ljava/util/List;)V

    return-void
.end method

.method public final zzg(Landroid/view/InputEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbz;->zzf(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zzh()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcb;->zzc:Lcom/google/android/gms/internal/ads/zzgbz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbz;->zzj()I

    move-result v0

    return v0
.end method
