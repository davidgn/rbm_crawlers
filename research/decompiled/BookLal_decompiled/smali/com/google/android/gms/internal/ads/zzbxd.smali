.class final Lcom/google/android/gms/internal/ads/zzbxd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbxf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbxf;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Lcom/google/android/gms/internal/ads/zzbxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbxd;->zza:Lcom/google/android/gms/internal/ads/zzbxf;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbxf;->zzb(Z)V

    return-void
.end method
