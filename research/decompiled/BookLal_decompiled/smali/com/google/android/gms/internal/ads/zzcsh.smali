.class final Lcom/google/android/gms/internal/ads/zzcsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhas;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrf;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcso;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcso;Lcom/google/android/gms/internal/ads/zzfrf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zza:Lcom/google/android/gms/internal/ads/zzfrf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzd:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zza:Lcom/google/android/gms/internal/ads/zzfrf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcsg;-><init>(Lcom/google/android/gms/internal/ads/zzcsh;Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzfrf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzd:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcso;->zzj()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object p1

    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzhbf;->zza(Ljava/lang/Runnable;)LN2/o;

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zza:Lcom/google/android/gms/internal/ads/zzfrf;

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcsf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzv;

    invoke-direct {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzcsf;-><init>(Lcom/google/android/gms/internal/ads/zzfrf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsh;->zzd:Lcom/google/android/gms/internal/ads/zzcso;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcso;->zzj()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzhbf;->zza(Ljava/lang/Runnable;)LN2/o;

    return-void
.end method
