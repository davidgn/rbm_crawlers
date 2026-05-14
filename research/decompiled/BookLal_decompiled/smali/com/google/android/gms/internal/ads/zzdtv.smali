.class final Lcom/google/android/gms/internal/ads/zzdtv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfjk;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjn;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcso;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzduc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzduc;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;Lcom/google/android/gms/internal/ads/zzcso;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzc:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzd:Lcom/google/android/gms/internal/ads/zzduc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaD(Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzP()Lcom/google/android/gms/internal/ads/zzclx;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzly:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzc:Lcom/google/android/gms/internal/ads/zzcso;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtv;->zzd:Lcom/google/android/gms/internal/ads/zzduc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduc;->zzm()Lcom/google/android/gms/internal/ads/zzejl;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduc;->zzn()Lcom/google/android/gms/internal/ads/zzfrf;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzclx;->zzd(Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzejl;Lcom/google/android/gms/internal/ads/zzfrf;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduc;->zzm()Lcom/google/android/gms/internal/ads/zzejl;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzduc;->zzl()Lcom/google/android/gms/internal/ads/zzdyq;

    move-result-object v2

    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzclx;->zze(Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzejl;Lcom/google/android/gms/internal/ads/zzdyq;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhv;->zzox:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzclx;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)V

    :cond_1
    return-void
.end method
