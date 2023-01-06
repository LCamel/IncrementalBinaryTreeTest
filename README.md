## IncrementalBinaryTree Gas Usage

| Tree depth | Items added | Average TX cost to add an item (gas) |
|------------|-------------|--------------------------------------|
| 4          | 16          | 216755                               |
| 8          | 256         | 368124                               |
| 12         | 4096        | 525975                               |

## Testing Steps

### Prepare

clone the repo

forge install

npm ci

copy .env.example to .env and edit it

### Run

```
./anvil.sh ; ./deploy.sh 4  ; time ./run.sh 16   ; ./anvilStop.sh ; cp run.txt 16.txt
./anvil.sh ; ./deploy.sh 8  ; time ./run.sh 256  ; ./anvilStop.sh ; cp run.txt 256.txt
./anvil.sh ; ./deploy.sh 12 ; time ./run.sh 4096 ; ./anvilStop.sh ; cp run.txt 4096.txt
```

### Examine

```
% tail -n 1 16.txt; tail -n 1 256.txt; tail -n 1 4096.txt
21013571166917622537724770309050693131274168214955073041334585836894534334888
17423832023779260798509972392341342337438953067403212755696896754322324038448
3237285002135128860689910603436351091811529643090659089349657798873513447282
% node root.mjs
21013571166917622537724770309050693131274168214955073041334585836894534334888
17423832023779260798509972392341342337438953067403212755696896754322324038448
3237285002135128860689910603436351091811529643090659089349657798873513447282

% grep gasUsed 16.txt | perl -lane '$s += $F[1]; END { print $s / 16 }'
216755
% grep gasUsed 256.txt | perl -lane '$s += $F[1]; END { print $s / 256 }'
368124.98828125
% grep gasUsed 4096.txt | perl -lane '$s += $F[1]; END { print $s / 4096 }'
525975.577148438
```
