.class final Lcom/google/android/gms/internal/ads/zzbfz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbep;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbgc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgc;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzf()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfz;->zza:Lcom/google/android/gms/internal/ads/zzbgc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zzg()V

    return-void
.end method
