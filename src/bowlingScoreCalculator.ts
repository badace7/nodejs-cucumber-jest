/* eslint-disable prettier/prettier */
/* eslint-disable @typescript-eslint/no-empty-function */

export function simpleBowling(resultat: string): number {
  const arrayedResults: string[] = resultat.split(',');

  console.log(arrayedResults)
    const newArrayedResults: any = arrayedResults.map(element => {
        return element.replace('-','');
    })

    console.log(newArrayedResults)
   return newArrayedResults.reduce((sum, value) => {
        return sum + parseInt(value);
    }, 0)
}
