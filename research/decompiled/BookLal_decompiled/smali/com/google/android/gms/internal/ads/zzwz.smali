.class final synthetic Lcom/google/android/gms/internal/ads/zzwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzds;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzxd;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzwk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzwp;

.field private final synthetic zzd:Ljava/io/IOException;

.field private final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxd;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzc:Lcom/google/android/gms/internal/ads/zzwp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzwz;->zze:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwz;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzxd;->zzb:Lcom/google/android/gms/internal/ads/zzwt;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxe;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzc:Lcom/google/android/gms/internal/ads/zzwp;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzwz;->zzd:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzwz;->zze:Z

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzxe;->zzal(ILcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zzwk;Lcom/google/android/gms/internal/ads/zzwp;Ljava/io/IOException;Z)V

    return-void
.end method
