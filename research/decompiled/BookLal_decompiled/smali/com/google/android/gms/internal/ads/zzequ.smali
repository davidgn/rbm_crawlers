.class public final Lcom/google/android/gms/internal/ads/zzequ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdml;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdml;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Lcom/google/android/gms/internal/ads/zzdml;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeqq;)Ljava/lang/Object;
    .locals 2

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeqs;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqr;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzeqr;-><init>(Lcom/google/android/gms/internal/ads/zzequ;Lcom/google/android/gms/internal/ads/zzfjk;)V

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzeqs;-><init>(Lcom/google/android/gms/internal/ads/zzequ;Lcom/google/android/gms/internal/ads/zzdmt;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzequ;->zza:Lcom/google/android/gms/internal/ads/zzdml;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdml;->zzd(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzdli;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeqt;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzeqt;-><init>(Lcom/google/android/gms/internal/ads/zzequ;Lcom/google/android/gms/internal/ads/zzdlf;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzeqq;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzh()Lcom/google/android/gms/internal/ads/zzdle;

    move-result-object p1

    return-object p1
.end method
