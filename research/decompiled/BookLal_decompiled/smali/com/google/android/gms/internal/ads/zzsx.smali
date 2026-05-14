.class public final Lcom/google/android/gms/internal/ads/zzsx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzqa;

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzsw;

.field private zze:Lcom/google/android/gms/internal/ads/zzqu;

.field private zzf:Lcom/google/android/gms/internal/ads/zzsz;

.field private zzg:Lcom/google/android/gms/internal/ads/zzsu;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzqa;->zza:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqa;->zza:Lcom/google/android/gms/internal/ads/zzqa;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Lcom/google/android/gms/internal/ads/zzqa;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzte;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzf:Lcom/google/android/gms/internal/ads/zzsz;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsz;

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzco;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzsz;-><init>([Lcom/google/android/gms/internal/ads/zzco;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzf:Lcom/google/android/gms/internal/ads/zzsz;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zze:Lcom/google/android/gms/internal/ads/zzqu;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzsu;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzsu;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzsw;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsw;->zza:Lcom/google/android/gms/internal/ads/zzsw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzsw;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzso;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzso;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzb:Lcom/google/android/gms/internal/ads/zzqa;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzso;->zzb(Lcom/google/android/gms/internal/ads/zzqa;)Lcom/google/android/gms/internal/ads/zzso;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzso;->zzf(Lcom/google/android/gms/internal/ads/zzsu;)Lcom/google/android/gms/internal/ads/zzso;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzsw;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzso;->zza(Lcom/google/android/gms/internal/ads/zzsw;)Lcom/google/android/gms/internal/ads/zzso;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzso;->zzc()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zze:Lcom/google/android/gms/internal/ads/zzqu;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzg:Lcom/google/android/gms/internal/ads/zzsu;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzd:Lcom/google/android/gms/internal/ads/zzsw;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgsj;->zzi(Z)V

    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzte;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzte;-><init>(Lcom/google/android/gms/internal/ads/zzsx;[B)V

    return-object v0
.end method

.method public final synthetic zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zza:Landroid/content/Context;

    return-object v0
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzqu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zze:Lcom/google/android/gms/internal/ads/zzqu;

    return-object v0
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzsz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsx;->zzf:Lcom/google/android/gms/internal/ads/zzsz;

    return-object v0
.end method
