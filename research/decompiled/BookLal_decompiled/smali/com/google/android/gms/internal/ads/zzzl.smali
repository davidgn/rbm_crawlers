.class final synthetic Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaaa;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzaaj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzzu;

.field private final synthetic zzc:Z

.field private final synthetic zzd:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzzu;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzzu;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:[I

    return-void
.end method


# virtual methods
.method public final synthetic zza(ILcom/google/android/gms/internal/ads/zzbg;[I)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    new-instance v10, Lcom/google/android/gms/internal/ads/zzzo;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Lcom/google/android/gms/internal/ads/zzaaj;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-direct {v10, v1, v11}, Lcom/google/android/gms/internal/ads/zzzo;-><init>(Lcom/google/android/gms/internal/ads/zzaaj;Lcom/google/android/gms/internal/ads/zzzu;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:[I

    aget v12, v1, p1

    sget v1, Lcom/google/android/gms/internal/ads/zzgvm;->zzd:I

    new-instance v13, Lcom/google/android/gms/internal/ads/zzgvj;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzgvj;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v15, p2

    move v14, v1

    :goto_0
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzbg;->zza:I

    if-ge v14, v1, :cond_0

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Z

    new-instance v9, Lcom/google/android/gms/internal/ads/zzzg;

    aget v6, p3, v14

    move-object v1, v9

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v11

    move-object v8, v10

    move-object v0, v9

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzzg;-><init>(ILcom/google/android/gms/internal/ads/zzbg;ILcom/google/android/gms/internal/ads/zzzu;IZLcom/google/android/gms/internal/ads/zzgsk;I)V

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzgvj;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgvj;

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzgvj;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object v0

    return-object v0
.end method
