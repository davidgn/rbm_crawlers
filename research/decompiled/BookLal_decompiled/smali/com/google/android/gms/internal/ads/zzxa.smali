.class final synthetic Lcom/google/android/gms/internal/ads/zzxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzds;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzxd;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzb:Lcom/google/android/gms/internal/ads/zzwp;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxa;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Lcom/google/android/gms/internal/ads/zzwt;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxe;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzb:Lcom/google/android/gms/internal/ads/zzwp;

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzxe;->zzam(ILcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzwp;)V

    return-void
.end method
