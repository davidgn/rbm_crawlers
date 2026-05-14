.class public final Lcom/google/android/gms/internal/ads/zzhcs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhcq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhde;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhct;

.field private zze:Lcom/google/android/gms/internal/ads/zzhcu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhde;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhcq;->zza:Lcom/google/android/gms/internal/ads/zzhcq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Lcom/google/android/gms/internal/ads/zzhcq;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Lcom/google/android/gms/internal/ads/zzhct;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhcu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Lcom/google/android/gms/internal/ads/zzhde;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhcu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhcu;->zzc()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Z

    return-object p0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhcs;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhct;->zza()Lcom/google/android/gms/internal/ads/zzhct;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Lcom/google/android/gms/internal/ads/zzhct;

    return-object p0
.end method

.method public final synthetic zzc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Z

    return v0
.end method

.method public final synthetic zzd(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zza:Z

    return-void
.end method

.method public final synthetic zze()Lcom/google/android/gms/internal/ads/zzhcq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzb:Lcom/google/android/gms/internal/ads/zzhcq;

    return-object v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzhde;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzc:Lcom/google/android/gms/internal/ads/zzhde;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzhct;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zzd:Lcom/google/android/gms/internal/ads/zzhct;

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/ads/zzhcu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhcu;

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzhcu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhcs;->zze:Lcom/google/android/gms/internal/ads/zzhcu;

    return-void
.end method
