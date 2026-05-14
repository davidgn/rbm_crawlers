.class final synthetic Lcom/google/android/gms/internal/ads/zzbtu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsa;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbov;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Lcom/google/android/gms/internal/ads/zzbov;

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbta;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtu;->zzb:Lcom/google/android/gms/internal/ads/zzbov;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbta;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    return-object p1
.end method
