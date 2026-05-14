.class final Lcom/google/android/gms/internal/ads/zzcos;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeai;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzc:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzd:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzbpv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcoc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcos;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbpv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzh:Lcom/google/android/gms/internal/ads/zzcos;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzg:Lcom/google/android/gms/internal/ads/zzcoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zze:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzf:Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzilv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzilu;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeae;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzeae;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzc:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeag;->zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzeag;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzilt;->zza(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzimd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzead;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzf:Lcom/google/android/gms/internal/ads/zzbpv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeae;->zzd(Lcom/google/android/gms/internal/ads/zzbpv;)Lcom/google/android/gms/internal/ads/zzead;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzeaf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzd:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeaf;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzeaa;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcop;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzg:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcos;->zzh:Lcom/google/android/gms/internal/ads/zzcos;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcop;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcos;[B)V

    return-object v0
.end method

.method public final synthetic zzd()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcos;->zze:Landroid/content/Context;

    return-object v0
.end method
