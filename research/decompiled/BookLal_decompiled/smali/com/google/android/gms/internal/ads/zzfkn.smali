.class final synthetic Lcom/google/android/gms/internal/ads/zzfkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbov;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdkd;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcso;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfrf;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzejl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdkd;Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzejl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Lcom/google/android/gms/internal/ads/zzdkd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Lcom/google/android/gms/internal/ads/zzcso;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzc:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzd:Lcom/google/android/gms/internal/ads/zzejl;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zza:Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzc(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdkd;)V

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "URL missing from click GMSG."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzd:Lcom/google/android/gms/internal/ads/zzejl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzc:Lcom/google/android/gms/internal/ads/zzfrf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkn;->zzb:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbou;->zza(Lcom/google/android/gms/internal/ads/zzcjz;Ljava/lang/String;)LN2/o;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfkl;

    invoke-direct {v3, p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfkl;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzfrf;Lcom/google/android/gms/internal/ads/zzejl;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zza:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {p2, v3, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void
.end method
