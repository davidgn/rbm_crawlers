.class final synthetic Lcom/google/android/gms/internal/ads/zzfht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgp;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcau;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfht;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcce;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfht;->zza:Lcom/google/android/gms/internal/ads/zzcau;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcau;->zzc()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcce;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcbq;->zzg(Lcom/google/android/gms/internal/ads/zzcbk;)V

    return-void
.end method
