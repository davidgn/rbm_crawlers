.class final Lcom/google/android/gms/internal/ads/zzcka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzccs;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzckk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckk;Lcom/google/android/gms/internal/ads/zzccs;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcka;->zza:Lcom/google/android/gms/internal/ads/zzccs;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcka;->zzb:Lcom/google/android/gms/internal/ads/zzckk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcka;->zza:Lcom/google/android/gms/internal/ads/zzccs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcka;->zzb:Lcom/google/android/gms/internal/ads/zzckk;

    const/16 v2, 0xa

    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzckk;->zzZ(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzccs;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
