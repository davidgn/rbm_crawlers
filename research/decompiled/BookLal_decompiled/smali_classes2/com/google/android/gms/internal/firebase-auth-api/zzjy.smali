.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x19

    const/16 v1, 0xa

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zza:[I

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb:[I

    const v1, 0x3ffffff

    const v2, 0x1ffffff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc:[I

    const/16 v1, 0x1a

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzd:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0x10
        0x13
        0x16
        0x19
        0x1c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x0
        0x1
        0x3
        0x4
        0x6
    .end array-data
.end method

.method public static zza([J[J[J)V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [J

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb([J[J[J)V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc([J[J)V

    return-void
.end method

.method public static zzb([J[J[J)V
    .locals 56

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    mul-long/2addr v4, v1

    aget-wide v6, p1, v3

    aget-wide v8, p2, v0

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    aput-wide v6, p0, v3

    aget-wide v4, p1, v3

    add-long v6, v4, v4

    aget-wide v10, p2, v3

    mul-long/2addr v6, v10

    const/4 v0, 0x2

    aget-wide v12, p2, v0

    mul-long/2addr v12, v1

    aget-wide v14, p1, v0

    mul-long/2addr v14, v8

    add-long/2addr v6, v12

    add-long/2addr v6, v14

    aput-wide v6, p0, v0

    aget-wide v6, p2, v0

    mul-long v12, v4, v6

    aget-wide v14, p1, v0

    mul-long v16, v14, v10

    const/4 v0, 0x3

    aget-wide v18, p2, v0

    mul-long v18, v18, v1

    aget-wide v20, p1, v0

    mul-long v20, v20, v8

    add-long v12, v12, v16

    add-long v12, v12, v18

    add-long v12, v12, v20

    aput-wide v12, p0, v0

    mul-long v12, v14, v6

    aget-wide v16, p2, v0

    mul-long v18, v4, v16

    aget-wide v20, p1, v0

    mul-long v22, v20, v10

    const/4 v0, 0x4

    aget-wide v24, p2, v0

    mul-long v24, v24, v1

    aget-wide v26, p1, v0

    mul-long v26, v26, v8

    add-long v18, v18, v22

    add-long v18, v18, v18

    add-long v18, v18, v12

    add-long v18, v18, v24

    add-long v18, v18, v26

    aput-wide v18, p0, v0

    mul-long v12, v14, v16

    mul-long v18, v20, v6

    aget-wide v22, p2, v0

    mul-long v24, v4, v22

    aget-wide v26, p1, v0

    mul-long v28, v26, v10

    const/4 v0, 0x5

    aget-wide v30, p2, v0

    mul-long v30, v30, v1

    aget-wide v32, p1, v0

    mul-long v32, v32, v8

    add-long v12, v12, v18

    add-long v12, v12, v24

    add-long v12, v12, v28

    add-long v12, v12, v30

    add-long v12, v12, v32

    aput-wide v12, p0, v0

    mul-long v12, v20, v16

    aget-wide v18, p2, v0

    mul-long v24, v4, v18

    aget-wide v28, p1, v0

    mul-long v30, v28, v10

    mul-long v32, v14, v22

    mul-long v34, v26, v6

    const/4 v0, 0x6

    aget-wide v36, p2, v0

    mul-long v36, v36, v1

    aget-wide v38, p1, v0

    mul-long v38, v38, v8

    add-long v12, v12, v24

    add-long v12, v12, v30

    add-long/2addr v12, v12

    add-long v12, v12, v32

    add-long v12, v12, v34

    add-long v12, v12, v36

    add-long v12, v12, v38

    aput-wide v12, p0, v0

    mul-long v12, v20, v22

    mul-long v24, v26, v16

    mul-long v30, v14, v18

    mul-long v32, v28, v6

    aget-wide v34, p2, v0

    mul-long v36, v4, v34

    aget-wide v38, p1, v0

    mul-long v40, v38, v10

    const/4 v0, 0x7

    aget-wide v42, p2, v0

    mul-long v42, v42, v1

    aget-wide v44, p1, v0

    mul-long v44, v44, v8

    add-long v12, v12, v24

    add-long v12, v12, v30

    add-long v12, v12, v32

    add-long v12, v12, v36

    add-long v12, v12, v40

    add-long v12, v12, v42

    add-long v12, v12, v44

    aput-wide v12, p0, v0

    mul-long v12, v26, v22

    mul-long v24, v20, v18

    mul-long v30, v28, v16

    aget-wide v32, p2, v0

    mul-long v36, v4, v32

    aget-wide v40, p1, v0

    mul-long v42, v40, v10

    mul-long v44, v14, v34

    mul-long v46, v38, v6

    const/16 v0, 0x8

    aget-wide v48, p2, v0

    mul-long v48, v48, v1

    aget-wide v50, p1, v0

    mul-long v50, v50, v8

    add-long v24, v24, v30

    add-long v24, v24, v36

    add-long v24, v24, v42

    add-long v24, v24, v24

    add-long v24, v24, v12

    add-long v24, v24, v44

    add-long v24, v24, v46

    add-long v24, v24, v48

    add-long v24, v24, v50

    aput-wide v24, p0, v0

    mul-long v12, v26, v18

    mul-long v24, v28, v22

    mul-long v30, v20, v34

    mul-long v36, v38, v16

    mul-long v42, v14, v32

    mul-long v44, v40, v6

    aget-wide v46, p2, v0

    mul-long v48, v4, v46

    aget-wide v50, p1, v0

    mul-long v52, v50, v10

    const/16 v0, 0x9

    aget-wide v54, p2, v0

    mul-long v1, v1, v54

    aget-wide v54, p1, v0

    mul-long v54, v54, v8

    add-long v12, v12, v24

    add-long v12, v12, v30

    add-long v12, v12, v36

    add-long v12, v12, v42

    add-long v12, v12, v44

    add-long v12, v12, v48

    add-long v12, v12, v52

    add-long/2addr v12, v1

    add-long v12, v12, v54

    aput-wide v12, p0, v0

    mul-long v1, v28, v18

    mul-long v8, v20, v32

    mul-long v12, v40, v16

    aget-wide v24, p2, v0

    mul-long v4, v4, v24

    aget-wide v30, p1, v0

    mul-long v10, v10, v30

    mul-long v36, v26, v34

    mul-long v42, v38, v22

    mul-long v44, v14, v46

    mul-long v48, v50, v6

    add-long/2addr v1, v8

    add-long/2addr v1, v12

    add-long/2addr v1, v4

    add-long/2addr v1, v10

    add-long/2addr v1, v1

    add-long v1, v1, v36

    add-long v1, v1, v42

    add-long v1, v1, v44

    add-long v1, v1, v48

    const/16 v0, 0xa

    aput-wide v1, p0, v0

    mul-long v0, v28, v34

    mul-long v2, v38, v18

    mul-long v4, v26, v32

    mul-long v8, v40, v22

    mul-long v10, v20, v46

    mul-long v12, v50, v16

    mul-long v14, v14, v24

    mul-long v6, v6, v30

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v8

    add-long/2addr v0, v10

    add-long/2addr v0, v12

    add-long/2addr v0, v14

    add-long/2addr v0, v6

    const/16 v2, 0xb

    aput-wide v0, p0, v2

    mul-long v0, v38, v34

    mul-long v2, v28, v32

    mul-long v4, v40, v18

    mul-long v20, v20, v24

    mul-long v16, v16, v30

    mul-long v6, v26, v46

    mul-long v8, v50, v22

    add-long/2addr v2, v4

    add-long v2, v2, v20

    add-long v2, v2, v16

    add-long/2addr v2, v2

    add-long/2addr v2, v0

    add-long/2addr v2, v6

    add-long/2addr v2, v8

    const/16 v0, 0xc

    aput-wide v2, p0, v0

    mul-long v0, v38, v32

    mul-long v2, v40, v34

    mul-long v4, v28, v46

    mul-long v6, v50, v18

    mul-long v26, v26, v24

    mul-long v22, v22, v30

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    add-long/2addr v0, v6

    add-long v0, v0, v26

    add-long v0, v0, v22

    const/16 v2, 0xd

    aput-wide v0, p0, v2

    mul-long v0, v40, v32

    mul-long v28, v28, v24

    mul-long v18, v18, v30

    mul-long v2, v38, v46

    mul-long v4, v50, v34

    add-long v0, v0, v28

    add-long v0, v0, v18

    add-long/2addr v0, v0

    add-long/2addr v0, v2

    add-long/2addr v0, v4

    const/16 v2, 0xe

    aput-wide v0, p0, v2

    mul-long v0, v40, v46

    mul-long v2, v50, v32

    mul-long v38, v38, v24

    mul-long v34, v34, v30

    add-long/2addr v0, v2

    add-long v0, v0, v38

    add-long v0, v0, v34

    const/16 v2, 0xf

    aput-wide v0, p0, v2

    mul-long v0, v50, v46

    mul-long v40, v40, v24

    mul-long v32, v32, v30

    add-long v32, v32, v40

    add-long v32, v32, v32

    add-long v32, v32, v0

    const/16 v0, 0x10

    aput-wide v32, p0, v0

    mul-long v50, v50, v24

    mul-long v46, v46, v30

    add-long v46, v46, v50

    const/16 v0, 0x11

    aput-wide v46, p0, v0

    add-long v30, v30, v30

    mul-long v30, v30, v24

    const/16 v0, 0x12

    aput-wide v30, p0, v0

    return-void
.end method

.method public static zzc([J[J)V
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zze([J)V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzd([J)V

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static zzd([J)V
    .locals 14

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x1a

    const-wide/32 v6, 0x4000000

    if-ge v4, v0, :cond_0

    aget-wide v8, p0, v4

    div-long v6, v8, v6

    shl-long v10, v6, v5

    sub-long/2addr v8, v10

    aput-wide v8, p0, v4

    add-int/lit8 v5, v4, 0x1

    aget-wide v8, p0, v5

    add-long/2addr v8, v6

    aput-wide v8, p0, v5

    const-wide/32 v6, 0x2000000

    div-long v6, v8, v6

    const/16 v10, 0x19

    shl-long v10, v6, v10

    sub-long/2addr v8, v10

    aput-wide v8, p0, v5

    add-int/lit8 v4, v4, 0x2

    aget-wide v8, p0, v4

    add-long/2addr v8, v6

    aput-wide v8, p0, v4

    goto :goto_0

    :cond_0
    aget-wide v8, p0, v3

    aget-wide v10, p0, v0

    const/4 v4, 0x4

    shl-long v12, v10, v4

    add-long/2addr v8, v12

    aput-wide v8, p0, v3

    add-long v12, v10, v10

    add-long/2addr v12, v8

    aput-wide v12, p0, v3

    add-long/2addr v12, v10

    aput-wide v12, p0, v3

    aput-wide v1, p0, v0

    div-long v0, v12, v6

    shl-long v4, v0, v5

    sub-long/2addr v12, v4

    aput-wide v12, p0, v3

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    add-long/2addr v3, v0

    aput-wide v3, p0, v2

    return-void
.end method

.method public static zze([J)V
    .locals 8

    const/16 v0, 0x8

    aget-wide v1, p0, v0

    const/16 v3, 0x12

    aget-wide v3, p0, v3

    const/4 v5, 0x4

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x7

    aget-wide v1, p0, v0

    const/16 v3, 0x11

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x6

    aget-wide v1, p0, v0

    const/16 v3, 0x10

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x5

    aget-wide v1, p0, v0

    const/16 v3, 0xf

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    aget-wide v0, p0, v5

    const/16 v2, 0xe

    aget-wide v2, p0, v2

    shl-long v6, v2, v5

    add-long/2addr v0, v6

    aput-wide v0, p0, v5

    add-long v6, v2, v2

    add-long/2addr v6, v0

    aput-wide v6, p0, v5

    add-long/2addr v6, v2

    aput-wide v6, p0, v5

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    const/16 v3, 0xd

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const/16 v3, 0xc

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const/16 v3, 0xb

    aget-wide v3, p0, v3

    shl-long v6, v3, v5

    add-long/2addr v1, v6

    aput-wide v1, p0, v0

    add-long v6, v3, v3

    add-long/2addr v6, v1

    aput-wide v6, p0, v0

    add-long/2addr v6, v3

    aput-wide v6, p0, v0

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/16 v3, 0xa

    aget-wide v3, p0, v3

    shl-long v5, v3, v5

    add-long/2addr v1, v5

    aput-wide v1, p0, v0

    add-long v5, v3, v3

    add-long/2addr v5, v1

    aput-wide v5, p0, v0

    add-long/2addr v5, v3

    aput-wide v5, p0, v0

    return-void
.end method

.method public static zzf([J[JJ)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    mul-long/2addr v1, p2

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzg([J[J)V
    .locals 58

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    mul-long v3, v1, v1

    add-long v5, v1, v1

    const/4 v7, 0x1

    aget-wide v8, p1, v7

    mul-long/2addr v5, v8

    mul-long v10, v8, v8

    const/4 v12, 0x2

    aget-wide v13, p1, v12

    mul-long v15, v1, v13

    add-long/2addr v15, v10

    add-long/2addr v15, v15

    mul-long v10, v8, v13

    const/16 v17, 0x3

    aget-wide v18, p1, v17

    mul-long v20, v1, v18

    add-long v20, v20, v10

    add-long v20, v20, v20

    mul-long v10, v13, v13

    const-wide/16 v22, 0x4

    mul-long v24, v8, v22

    mul-long v24, v24, v18

    add-long v26, v1, v1

    const/16 v28, 0x4

    aget-wide v29, p1, v28

    mul-long v26, v26, v29

    add-long v10, v10, v24

    add-long v10, v10, v26

    mul-long v24, v13, v18

    mul-long v26, v8, v29

    const/16 v31, 0x5

    aget-wide v32, p1, v31

    mul-long v34, v1, v32

    add-long v24, v24, v26

    add-long v24, v24, v34

    add-long v24, v24, v24

    mul-long v26, v18, v18

    mul-long v34, v13, v29

    const/16 v36, 0x6

    aget-wide v37, p1, v36

    mul-long v39, v1, v37

    add-long v41, v8, v8

    mul-long v41, v41, v32

    add-long v26, v26, v34

    add-long v26, v26, v39

    add-long v26, v26, v41

    add-long v26, v26, v26

    mul-long v34, v18, v29

    mul-long v39, v13, v32

    mul-long v41, v8, v37

    add-long v34, v34, v39

    const/16 v39, 0x7

    aget-wide v43, p1, v39

    mul-long v45, v1, v43

    add-long v34, v34, v41

    add-long v34, v34, v45

    add-long v34, v34, v34

    mul-long v40, v29, v29

    mul-long v45, v13, v37

    const/16 v42, 0x8

    aget-wide v47, p1, v42

    mul-long v49, v1, v47

    mul-long v51, v8, v43

    mul-long v53, v18, v32

    add-long v53, v53, v51

    add-long v45, v45, v49

    add-long v53, v53, v53

    add-long v53, v53, v45

    add-long v53, v53, v53

    add-long v53, v53, v40

    mul-long v40, v29, v32

    mul-long v45, v18, v37

    mul-long v49, v13, v43

    mul-long v51, v8, v47

    const/16 v55, 0x9

    aget-wide v56, p1, v55

    mul-long v1, v1, v56

    add-long v40, v40, v45

    add-long v40, v40, v49

    add-long v40, v40, v51

    add-long v40, v40, v1

    add-long v40, v40, v40

    mul-long v1, v32, v32

    mul-long v45, v29, v37

    mul-long v49, v13, v47

    mul-long v51, v18, v43

    mul-long v8, v8, v56

    add-long v8, v8, v51

    add-long v1, v1, v45

    add-long v1, v1, v49

    add-long/2addr v8, v8

    add-long/2addr v8, v1

    add-long/2addr v8, v8

    mul-long v1, v32, v37

    mul-long v45, v29, v43

    mul-long v49, v18, v47

    mul-long v13, v13, v56

    add-long v1, v1, v45

    add-long v1, v1, v49

    add-long/2addr v1, v13

    add-long/2addr v1, v1

    mul-long v13, v37, v37

    mul-long v45, v29, v47

    mul-long v49, v32, v43

    mul-long v18, v18, v56

    add-long v18, v18, v49

    add-long v18, v18, v18

    add-long v18, v18, v45

    add-long v18, v18, v18

    add-long v18, v18, v13

    mul-long v13, v37, v43

    mul-long v45, v32, v47

    mul-long v29, v29, v56

    add-long v13, v13, v45

    add-long v13, v13, v29

    add-long/2addr v13, v13

    mul-long v29, v43, v43

    mul-long v45, v37, v47

    add-long v32, v32, v32

    mul-long v32, v32, v56

    add-long v29, v29, v45

    add-long v29, v29, v32

    add-long v29, v29, v29

    mul-long v32, v43, v47

    mul-long v37, v37, v56

    add-long v37, v37, v32

    add-long v37, v37, v37

    mul-long v32, v47, v47

    mul-long v43, v43, v22

    mul-long v43, v43, v56

    add-long v43, v43, v32

    add-long v47, v47, v47

    mul-long v47, v47, v56

    add-long v22, v56, v56

    mul-long v22, v22, v56

    const/16 v12, 0x13

    new-array v12, v12, [J

    aput-wide v3, v12, v0

    aput-wide v5, v12, v7

    const/4 v0, 0x2

    aput-wide v15, v12, v0

    aput-wide v20, v12, v17

    aput-wide v10, v12, v28

    aput-wide v24, v12, v31

    aput-wide v26, v12, v36

    aput-wide v34, v12, v39

    aput-wide v53, v12, v42

    aput-wide v40, v12, v55

    const/16 v0, 0xa

    aput-wide v8, v12, v0

    const/16 v0, 0xb

    aput-wide v1, v12, v0

    const/16 v0, 0xc

    aput-wide v18, v12, v0

    const/16 v0, 0xd

    aput-wide v13, v12, v0

    const/16 v0, 0xe

    aput-wide v29, v12, v0

    const/16 v0, 0xf

    aput-wide v37, v12, v0

    const/16 v0, 0x10

    aput-wide v43, v12, v0

    const/16 v0, 0x11

    aput-wide v47, v12, v0

    const/16 v0, 0x12

    aput-wide v22, v12, v0

    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc([J[J)V

    return-void
.end method

.method public static zzh([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzi([J[J[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static zzj([J)[B
    .locals 16

    const/16 v0, 0xa

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x13

    const/16 v6, 0x19

    const/16 v7, 0x9

    const/16 v8, 0x1f

    const/4 v9, 0x2

    if-ge v3, v9, :cond_1

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_0

    aget-wide v10, v1, v9

    shr-long v12, v10, v8

    and-long/2addr v12, v10

    and-int/lit8 v14, v9, 0x1

    sget-object v15, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzd:[I

    aget v14, v15, v14

    shr-long/2addr v12, v14

    long-to-int v12, v12

    neg-int v12, v12

    shl-int v13, v12, v14

    int-to-long v13, v13

    add-long/2addr v10, v13

    aput-wide v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    aget-wide v10, v1, v9

    int-to-long v12, v12

    sub-long/2addr v10, v12

    aput-wide v10, v1, v9

    goto :goto_1

    :cond_0
    aget-wide v9, v1, v7

    shr-long v11, v9, v8

    and-long/2addr v11, v9

    shr-long/2addr v11, v6

    long-to-int v6, v11

    neg-int v6, v6

    shl-int/lit8 v8, v6, 0x19

    int-to-long v11, v8

    add-long/2addr v9, v11

    aput-wide v9, v1, v7

    aget-wide v7, v1, v2

    int-to-long v9, v6

    mul-long/2addr v9, v4

    sub-long/2addr v7, v9

    aput-wide v7, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-wide v10, v1, v2

    shr-long v12, v10, v8

    and-long/2addr v12, v10

    const/16 v3, 0x1a

    shr-long/2addr v12, v3

    long-to-int v3, v12

    neg-int v3, v3

    shl-int/lit8 v12, v3, 0x1a

    int-to-long v12, v12

    add-long/2addr v10, v12

    aput-wide v10, v1, v2

    const/4 v10, 0x1

    aget-wide v11, v1, v10

    int-to-long v13, v3

    sub-long/2addr v11, v13

    aput-wide v11, v1, v10

    move v3, v2

    :goto_2
    if-ge v3, v9, :cond_3

    move v11, v2

    :goto_3
    if-ge v11, v7, :cond_2

    aget-wide v12, v1, v11

    and-int/lit8 v14, v11, 0x1

    sget-object v15, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzd:[I

    aget v15, v15, v14

    shr-long v9, v12, v15

    sget-object v15, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc:[I

    aget v14, v15, v14

    int-to-long v14, v14

    and-long/2addr v12, v14

    aput-wide v12, v1, v11

    add-int/lit8 v11, v11, 0x1

    aget-wide v12, v1, v11

    long-to-int v9, v9

    int-to-long v9, v9

    add-long/2addr v12, v9

    aput-wide v12, v1, v11

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    aget-wide v9, v1, v7

    shr-long v11, v9, v6

    const-wide/32 v13, 0x1ffffff

    and-long/2addr v9, v13

    aput-wide v9, v1, v7

    aget-wide v6, v1, v2

    long-to-int v3, v11

    int-to-long v9, v3

    mul-long/2addr v9, v4

    add-long/2addr v9, v6

    aput-wide v9, v1, v2

    long-to-int v3, v9

    const v4, -0x3ffffed

    add-int/2addr v3, v4

    shr-int/2addr v3, v8

    not-int v3, v3

    const/4 v4, 0x1

    :goto_4
    if-ge v4, v0, :cond_4

    aget-wide v5, v1, v4

    long-to-int v5, v5

    and-int/lit8 v6, v4, 0x1

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc:[I

    aget v6, v7, v6

    xor-int/2addr v5, v6

    not-int v5, v5

    shl-int/lit8 v6, v5, 0x10

    and-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x8

    and-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x4

    and-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x2

    and-int/2addr v5, v6

    add-int v6, v5, v5

    and-int/2addr v5, v6

    shr-int/2addr v5, v8

    and-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    aget-wide v4, v1, v2

    const v6, 0x3ffffed

    and-int/2addr v6, v3

    int-to-long v6, v6

    sub-long/2addr v4, v6

    aput-wide v4, v1, v2

    const/4 v4, 0x1

    aget-wide v5, v1, v4

    const v7, 0x1ffffff

    and-int/2addr v7, v3

    int-to-long v7, v7

    sub-long/2addr v5, v7

    aput-wide v5, v1, v4

    const/4 v9, 0x2

    :goto_5
    if-ge v9, v0, :cond_5

    aget-wide v4, v1, v9

    const v6, 0x3ffffff

    and-int/2addr v6, v3

    int-to-long v10, v6

    sub-long/2addr v4, v10

    aput-wide v4, v1, v9

    add-int/lit8 v4, v9, 0x1

    aget-wide v5, v1, v4

    sub-long/2addr v5, v7

    aput-wide v5, v1, v4

    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_5
    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_6

    aget-wide v4, v1, v3

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb:[I

    aget v6, v6, v3

    shl-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    const/16 v3, 0x20

    new-array v3, v3, [B

    :goto_7
    if-ge v2, v0, :cond_7

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zza:[I

    aget v4, v4, v2

    aget-byte v5, v3, v4

    int-to-long v5, v5

    aget-wide v7, v1, v2

    const-wide/16 v9, 0xff

    and-long v11, v7, v9

    or-long/2addr v5, v11

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v5, v4, 0x1

    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x8

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v4, 0x2

    aget-byte v6, v3, v5

    int-to-long v11, v6

    const/16 v6, 0x10

    shr-long v13, v7, v6

    and-long/2addr v13, v9

    or-long/2addr v11, v13

    long-to-int v6, v11

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x3

    aget-byte v5, v3, v4

    int-to-long v5, v5

    const/16 v11, 0x18

    shr-long/2addr v7, v11

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    return-object v3
.end method

.method public static zzk([B)[J
    .locals 12

    const/16 v0, 0xa

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zza:[I

    aget v3, v3, v2

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzb:[I

    aget v7, v7, v2

    int-to-long v8, v5

    int-to-long v4, v4

    int-to-long v10, v6

    const/16 v6, 0x8

    shl-long/2addr v8, v6

    or-long/2addr v4, v8

    int-to-long v8, v3

    const/16 v3, 0x10

    shl-long/2addr v10, v3

    or-long v3, v4, v10

    const/16 v5, 0x18

    shl-long v5, v8, v5

    or-long/2addr v3, v5

    shr-long/2addr v3, v7

    and-int/lit8 v5, v2, 0x1

    sget-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzjy;->zzc:[I

    aget v5, v6, v5

    int-to-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
