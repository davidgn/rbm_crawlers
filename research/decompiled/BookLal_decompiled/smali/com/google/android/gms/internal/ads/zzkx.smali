.class final synthetic Lcom/google/android/gms/internal/ads/zzkx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzkz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzkz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkx;->zza:Lcom/google/android/gms/internal/ads/zzkz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzla;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzla;->zzae()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzla;->zzT(IILjava/lang/Object;)V

    return-void
.end method
