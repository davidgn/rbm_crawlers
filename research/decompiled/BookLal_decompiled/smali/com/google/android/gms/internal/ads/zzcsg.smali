.class final synthetic Lcom/google/android/gms/internal/ads/zzcsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsh;

.field private final synthetic zzb:Ljava/lang/Throwable;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfrf;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/ads/internal/util/client/zzv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcsh;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfrf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzc:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzlI:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzb:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcsh;->zzd:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcso;->zzi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbzd;->zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Lcom/google/android/gms/internal/ads/zzbzf;

    const-string v0, "AttributionReporting.registerSourceAndPingClickUrl"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbzf;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcsh;->zzd:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcso;->zzi()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbzd;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbzf;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Lcom/google/android/gms/internal/ads/zzbzf;

    const-string v0, "AttributionReportingSampled.registerSourceAndPingClickUrl"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbzf;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zze:Lcom/google/android/gms/ads/internal/util/client/zzv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzd:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsg;->zzc:Lcom/google/android/gms/internal/ads/zzfrf;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzfrf;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzdel;)V

    return-void
.end method
