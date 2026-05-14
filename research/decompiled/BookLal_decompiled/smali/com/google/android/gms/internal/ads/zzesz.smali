.class final synthetic Lcom/google/android/gms/internal/ads/zzesz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzetb;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzetb;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesz;->zza:Lcom/google/android/gms/internal/ads/zzetb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesz;->zza:Lcom/google/android/gms/internal/ads/zzetb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzetb;->zze:Lcom/google/android/gms/internal/ads/zzete;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzete;->zzf()Lcom/google/android/gms/internal/ads/zzesu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesu;->zze()Lcom/google/android/gms/internal/ads/zzdbz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesz;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdbz;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
