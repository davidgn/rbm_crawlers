.class public final Lcom/google/android/gms/internal/ads/zzeoc;
.super Lcom/google/android/gms/internal/ads/zzenx;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcmo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdbf;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeqn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdhw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeoi;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzelc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcmo;Lcom/google/android/gms/internal/ads/zzdbf;Lcom/google/android/gms/internal/ads/zzeqn;Lcom/google/android/gms/internal/ads/zzdhw;Lcom/google/android/gms/internal/ads/zzeoi;Lcom/google/android/gms/internal/ads/zzelc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzenx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzb:Lcom/google/android/gms/internal/ads/zzdbf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzc:Lcom/google/android/gms/internal/ads/zzeqn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zze:Lcom/google/android/gms/internal/ads/zzeoi;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzf:Lcom/google/android/gms/internal/ads/zzelc;

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzfkd;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjv;)LN2/o;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzb:Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdbf;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdbf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdaz;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zze:Lcom/google/android/gms/internal/ads/zzeoi;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzdaz;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzeoi;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzd(Lcom/google/android/gms/internal/ads/zzdaz;)Lcom/google/android/gms/internal/ads/zzdbf;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhv;->zzew:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzf:Lcom/google/android/gms/internal/ads/zzelc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbf;->zzg(Lcom/google/android/gms/internal/ads/zzelc;)Lcom/google/android/gms/internal/ads/zzdbf;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zza:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmo;->zzm()Lcom/google/android/gms/internal/ads/zzdmk;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbf;->zze()Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zze(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdmk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzd:Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzf(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdmk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeoc;->zzc:Lcom/google/android/gms/internal/ads/zzeqn;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzd(Lcom/google/android/gms/internal/ads/zzeqn;)Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdmk;->zza()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdml;->zzb()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzb()LN2/o;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyc;->zzc(LN2/o;)LN2/o;

    move-result-object p1

    return-object p1
.end method
