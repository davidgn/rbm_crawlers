.class final synthetic Lcom/google/android/gms/internal/ads/zzgst;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsx;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgrz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgst;->zza:Lcom/google/android/gms/internal/ads/zzgrz;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzgsy;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgst;->zza:Lcom/google/android/gms/internal/ads/zzgrz;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgrz;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzgry;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsq;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgsq;-><init>(Lcom/google/android/gms/internal/ads/zzgsy;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/ads/zzgry;)V

    return-object v1
.end method
